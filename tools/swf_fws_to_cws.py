"""Batch convert uncompressed FWS SWF files to zlib-compressed CWS.

Used for GameMaker projects whose SWF sprites were previously rewritten to FWS
(for GMRT) and now render as white placeholders under the VM runtime.

Usage:
    python tools/swf_fws_to_cws.py <sprites_dir> [backup_dir]

The original files are copied into backup_dir (default: %TEMP%\\swf_fws_backup_<ts>)
keeping their relative paths. Files that are not FWS are left untouched.
"""

import os
import shutil
import struct
import sys
import time
import zlib

SIG_FWS = b"FWS"
SIG_CWS = b"CWS"


def convert(path):
    data = open(path, "rb").read()
    if data[:3] != SIG_FWS:
        return "skipped"
    if len(data) < 8:
        return "invalid"
    version = data[3]
    body = data[8:]
    if len(body) != struct.unpack("<I", data[4:8])[0] - 8:
        return "bad-length"
    packed = zlib.compress(body, 9)
    # SWF FileLength always stores the UNCOMPRESSED total length, even for CWS.
    out = SIG_CWS + bytes([version]) + struct.pack("<I", len(body) + 8) + packed
    with open(path, "wb") as f:
        f.write(out)
    return "converted"


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 1
    root = os.path.abspath(sys.argv[1])
    stamp = time.strftime("%Y%m%d_%H%M%S")
    backup = os.path.abspath(
        sys.argv[2] if len(sys.argv) > 2
        else os.path.join(os.environ.get("TEMP", "."), "swf_fws_backup_" + stamp)
    )
    stats = {"converted": 0, "skipped": 0, "invalid": 0, "bad-length": 0}
    for dirpath, _dirs, files in os.walk(root):
        for name in files:
            if not name.lower().endswith(".swf"):
                continue
            path = os.path.join(dirpath, name)
            rel = os.path.relpath(path, root)
            target = os.path.join(backup, rel)
            os.makedirs(os.path.dirname(target), exist_ok=True)
            shutil.copy2(path, target)
            result = convert(path)
            stats[result] = stats.get(result, 0) + 1
            if result not in ("converted", "skipped"):
                print("WARNING:", result, path)
    print("done:", stats)
    print("backup:", backup)
    return 0


if __name__ == "__main__":
    sys.exit(main())
