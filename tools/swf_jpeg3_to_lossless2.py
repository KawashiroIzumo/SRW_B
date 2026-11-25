"""Rewrite DefineBitsJPEG3 bitmaps inside SWF files as DefineBitsLossless2.

GameMaker's SWF importer (SWFReader.dll -> YoYoImage/Magick.NET) fails to decode the
DefineBitsJPEG3 bitmaps used by this project and silently substitutes a white bitmap,
which is why the sprites render as white blocks in game. Bitmaps stored as
DefineBitsLossless2 decode fine (the sprites that do display use that tag).

This tool decodes every JPEG3 bitmap (JPEG + zlib alpha) and rewrites it as a
DefineBitsLossless2 bitmap (format 5, 32-bit ARGB), leaving charIds untouched so
PlaceObject2/DefineSprite references stay valid.

Usage:
    python tools/swf_jpeg3_to_lossless2.py <root_dir> [--apply] [--only NAME]
                                            [--colorkey 0xRRGGBB]
                                            [--order abgr|argb]

--order abgr (default) matches how GameMaker reads the 32-bit payload; use argb
to follow the Flash spec byte order instead.

Without --apply it only reports what would change (dry run).
"""

import io
import os
import struct
import sys
import zlib

from PIL import Image

try:
    import numpy as np
except ImportError:  # pragma: no cover
    np = None

TAG_JPEG3 = 35
TAG_LOSSLESS2 = 36
TAG_END = 0
TAG_SPRITE = 39


def read_bits(data):
    out = []
    for b in data:
        for i in range(7, -1, -1):
            out.append((b >> i) & 1)
    return out


def body_start(body):
    b = read_bits(body[:16])
    i = 0
    nbits = 0
    for _ in range(5):
        nbits = (nbits << 1) | b[i]
        i += 1
    i += 4 * nbits
    i += 32  # frame rate + frame count
    return (i + 7) // 8


def walk_tags(body):
    """Yield (code, data_offset, data_length, header_offset, data_in_header_len)."""
    off = body_start(body)
    while off + 2 <= len(body):
        hdr_off = off
        h = struct.unpack("<H", body[off:off + 2])[0]
        off += 2
        code = h >> 6
        ln = h & 0x3F
        if ln == 0x3F:
            ln = struct.unpack("<I", body[off:off + 4])[0]
            off += 4
        yield code, off, ln, hdr_off, off - hdr_off - 2
        if code == TAG_END:
            return
        off += ln


def jpeg3_to_lossless2(payload, colorkey, order="abgr"):
    char_id = struct.unpack("<H", payload[0:2])[0]
    alpha_off = struct.unpack("<I", payload[2:6])[0]
    img = payload[6:6 + alpha_off]
    alpha_raw = payload[6 + alpha_off:]

    im = Image.open(io.BytesIO(img)).convert("RGB")
    w, h = im.size
    if alpha_raw:
        alpha = zlib.decompress(alpha_raw)
        if len(alpha) != w * h:
            raise ValueError("alpha size %d != %d" % (len(alpha), w * h))
    else:
        alpha = None

    if np is None:
        raise RuntimeError("需要 numpy 才能转换: pip install numpy")

    rgb = np.frombuffer(im.tobytes(), dtype=np.uint8).reshape(h, w, 3)
    out = np.zeros((h, w, 4), dtype=np.uint8)
    if alpha is not None:
        out[..., 0] = np.frombuffer(alpha, dtype=np.uint8).reshape(h, w)
    else:
        ka = (colorkey >> 16) & 0xFF
        kg = (colorkey >> 8) & 0xFF
        kb = colorkey & 0xFF
        opaque = ~((rgb[..., 0] == ka) & (rgb[..., 1] == kg) & (rgb[..., 2] == kb))
        out[..., 0] = np.where(opaque, 255, 0).astype(np.uint8)

    # GameMaker reads the 32-bit (format 5) payload as A,B,G,R, i.e. red and blue
    # swapped relative to the ARGB order written by Flash authoring tools.
    if order == "argb":
        out[..., 1] = rgb[..., 0]
        out[..., 2] = rgb[..., 1]
        out[..., 3] = rgb[..., 2]
    else:
        out[..., 1] = rgb[..., 2]
        out[..., 2] = rgb[..., 1]
        out[..., 3] = rgb[..., 0]

    return char_id, w, h, out.tobytes()


def build_tag(code, data):
    if len(data) < 0x3F:
        return struct.pack("<H", (code << 6) | len(data)) + data
    return struct.pack("<H", (code << 6) | 0x3F) + struct.pack("<I", len(data)) + data


def convert_swf(path, colorkey, apply, order):
    raw = open(path, "rb").read()
    sig = raw[:3]
    if sig == b"CWS":
        body = bytearray(zlib.decompress(raw[8:]))
    elif sig == b"FWS":
        body = bytearray(raw[8:])
    else:
        return None

    # collect tag spans (top level only; sprites keep their own stream but charIds are global)
    spans = list(walk_tags(body))
    jpeg_spans = [s for s in spans if s[0] == TAG_JPEG3]
    if not jpeg_spans:
        return None

    # rebuild from the end so offsets stay valid
    new_body = bytearray(body)
    stats = []
    for code, doff, dlen, hdr_off, hdr_len in reversed(spans):
        if code != TAG_JPEG3:
            continue
        payload = bytes(body[doff:doff + dlen])
        try:
            char_id, w, h, argb = jpeg3_to_lossless2(payload, colorkey, order)
        except Exception as e:
            stats.append((path, "FAIL", str(e)))
            continue
        data = struct.pack("<H", char_id) + bytes([5]) + struct.pack("<HH", w, h) + zlib.compress(argb, 6)
        new_tag = build_tag(TAG_LOSSLESS2, data)
        new_body[hdr_off:hdr_off + hdr_len + 2 + dlen] = new_tag
        stats.append((path, "ok", "charid=%d %dx%d %d->%d bytes" % (char_id, w, h, dlen, len(data))))

    if apply and stats:
        # recompress: keep the original compression style
        if sig == b"CWS":
            out = b"CWS" + bytes([raw[3]]) + struct.pack("<I", len(new_body) + 8) + zlib.compress(bytes(new_body), 9)
        else:
            out = b"FWS" + bytes([raw[3]]) + struct.pack("<I", len(new_body) + 8) + bytes(new_body)
        open(path, "wb").write(out)
    return stats


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 1
    root = os.path.abspath(sys.argv[1])
    apply = "--apply" in sys.argv
    only = None
    colorkey = 0xFFFFFF
    order = "abgr"
    for i, a in enumerate(sys.argv):
        if a == "--only":
            only = sys.argv[i + 1]
        if a == "--colorkey":
            colorkey = int(sys.argv[i + 1], 0)
        if a == "--order":
            order = sys.argv[i + 1].lower()
            if order not in ("abgr", "argb"):
                print("--order must be abgr (GameMaker) or argb (Flash spec)")
                return 1

    total_ok = total_fail = 0
    for dp, _dn, fn in os.walk(root):
        if only and only.lower() not in dp.lower():
            continue
        for f in fn:
            if not f.lower().endswith(".swf"):
                continue
            p = os.path.join(dp, f)
            try:
                st = convert_swf(p, colorkey, apply, order)
            except Exception as e:
                print("ERR", p, e)
                continue
            if not st:
                continue
            ok = sum(1 for s in st if s[1] == "ok")
            fail = len(st) - ok
            total_ok += ok
            total_fail += fail
            print("%-60s bitmaps ok=%d fail=%d" % (os.path.relpath(p, root), ok, fail))
            for s in st:
                if s[1] != "ok":
                    print("    ", s[1], s[2])
    print("\nTOTAL bitmaps ok=%d fail=%d  apply=%s" % (total_ok, total_fail, apply))
    return 0


if __name__ == "__main__":
    sys.exit(main())
