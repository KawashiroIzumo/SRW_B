"""SWF 位图修复工具（图形界面）

把 GameMaker 无法解码的 DefineBitsJPEG3 位图批量改写成 DefineBitsLossless2，
解决 SWF 精灵在游戏内显示成纯白方块、以及部分文件编译时 alpha 解压崩溃的问题。

用法：双击运行，或用 python tools/swf_fix_gui.py

依赖：Pillow、numpy
    python -m pip install pillow numpy
"""

import os
import queue
import shutil
import sys
import threading
import time

import tkinter as tk
from tkinter import filedialog, messagebox, ttk

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import swf_jpeg3_to_lossless2 as core  # noqa: E402


def find_swfs(root):
    out = []
    for dp, _dn, fns in os.walk(root):
        for f in fns:
            if f.lower().endswith(".swf"):
                out.append(os.path.join(dp, f))
    return out


class App:
    def __init__(self, root):
        self.root = root
        self.q = queue.Queue()
        self.busy = False
        self.total_files = 0

        root.title("SWF 位图修复工具")
        root.geometry("820x600")
        root.minsize(720, 480)

        pad = {"padx": 10, "pady": 6}

        top = ttk.LabelFrame(root, text="素材目录")
        top.pack(fill="x", **pad)
        self.dir_var = tk.StringVar()
        ttk.Entry(top, textvariable=self.dir_var).pack(side="left", fill="x", expand=True, padx=(10, 6), pady=10)
        ttk.Button(top, text="选择…", command=self.pick_dir).pack(side="left", padx=(0, 10), pady=10)

        opt = ttk.LabelFrame(root, text="选项")
        opt.pack(fill="x", **pad)
        self.order_var = tk.StringVar(value="abgr")
        ttk.Radiobutton(opt, text="GM 通道顺序 A,B,G,R（推荐）", variable=self.order_var,
                        value="abgr").grid(row=0, column=0, sticky="w", padx=10, pady=4)
        ttk.Radiobutton(opt, text="标准 ARGB（Flash 规范）", variable=self.order_var,
                        value="argb").grid(row=0, column=1, sticky="w", padx=10, pady=4)
        self.backup_var = tk.BooleanVar(value=True)
        ttk.Checkbutton(opt, text="写入前备份原始 SWF", variable=self.backup_var).grid(
            row=1, column=0, sticky="w", padx=10, pady=4)
        self.dry_var = tk.BooleanVar(value=False)
        ttk.Checkbutton(opt, text="只预演，不写入文件", variable=self.dry_var).grid(
            row=1, column=1, sticky="w", padx=10, pady=4)

        bar = ttk.Frame(root)
        bar.pack(fill="x", **pad)
        self.btn = ttk.Button(bar, text="开始处理", command=self.start)
        self.btn.pack(side="left", padx=10)
        self.progress = ttk.Progressbar(bar, mode="determinate")
        self.progress.pack(side="left", fill="x", expand=True, padx=10)
        self.status = ttk.Label(bar, text="就绪", width=26, anchor="w")
        self.status.pack(side="left", padx=(0, 10))

        logf = ttk.LabelFrame(root, text="日志")
        logf.pack(fill="both", expand=True, **pad)
        self.log = tk.Text(logf, wrap="none", height=18)
        sb = ttk.Scrollbar(logf, command=self.log.yview)
        self.log.configure(yscrollcommand=sb.set)
        sb.pack(side="right", fill="y")
        self.log.pack(side="left", fill="both", expand=True, padx=(10, 0), pady=10)

        self.root.after(100, self.poll)
        self.write("选择素材根目录后点“开始处理”。\n"
                   "工具会把 DefineBitsJPEG3 位图改写为 DefineBitsLossless2。\n")

    # ---------- helpers ----------
    def write(self, s):
        self.log.insert("end", s)
        self.log.see("end")

    def pick_dir(self):
        d = filedialog.askdirectory(title="选择 SWF 素材根目录")
        if d:
            self.dir_var.set(d)

    def poll(self):
        try:
            while True:
                kind, payload = self.q.get_nowait()
                if kind == "log":
                    self.write(payload)
                elif kind == "progress":
                    done, total = payload
                    self.progress["maximum"] = max(total, 1)
                    self.progress["value"] = done
                    self.status.config(text="%d / %d 个文件" % (done, total))
                elif kind == "done":
                    self.busy = False
                    self.btn.config(state="normal")
                    self.status.config(text="完成")
                    messagebox.showinfo("完成", payload)
                elif kind == "error":
                    self.busy = False
                    self.btn.config(state="normal")
                    self.status.config(text="出错")
                    messagebox.showerror("出错", payload)
        except queue.Empty:
            pass
        self.root.after(100, self.poll)

    # ---------- run ----------
    def start(self):
        if self.busy:
            return
        root_dir = self.dir_var.get().strip()
        if not root_dir or not os.path.isdir(root_dir):
            messagebox.showwarning("提示", "请先选择素材根目录")
            return

        files = find_swfs(root_dir)
        if not files:
            messagebox.showwarning("提示", "该目录下没有找到 .swf 文件")
            return

        self.busy = True
        self.btn.config(state="disabled")
        self.progress["value"] = 0
        self.progress["maximum"] = len(files)
        self.total_files = len(files)
        threading.Thread(target=self.worker, args=(root_dir, files), daemon=True).start()

    def worker(self, root_dir, files):
        t0 = time.time()
        apply = not self.dry_var.get()
        order = self.order_var.get()
        n_bitmaps = n_fail = n_files = 0
        size_before = size_after = 0
        fail_list = []

        backup_dir = None
        if apply and self.backup_var.get():
            backup_dir = os.path.join(os.path.dirname(os.path.abspath(root_dir)),
                                      "_swf_backup_" + time.strftime("%Y%m%d_%H%M%S"))
            self.q.put(("log", "备份到 %s\n" % backup_dir))

        for i, p in enumerate(files, 1):
            try:
                size_before += os.path.getsize(p)
                if backup_dir:
                    rel = os.path.relpath(p, root_dir)
                    dst = os.path.join(backup_dir, rel)
                    os.makedirs(os.path.dirname(dst), exist_ok=True)
                    shutil.copy2(p, dst)
                st = core.convert_swf(p, 0xFFFFFF, apply, order)
                size_after += os.path.getsize(p)
                if st:
                    ok = sum(1 for s in st if s[1] == "ok")
                    bad = [s for s in st if s[1] != "ok"]
                    n_files += 1
                    n_bitmaps += ok
                    n_fail += len(bad)
                    self.q.put(("log", "%-58s 位图 %d%s\n" % (
                        os.path.relpath(p, root_dir), ok,
                        "" if not bad else "  失败 %d" % len(bad))))
                    for s in bad:
                        self.q.put(("log", "    %s\n" % s[2]))
                        fail_list.append(os.path.relpath(p, root_dir))
            except Exception as e:
                n_fail += 1
                fail_list.append(os.path.relpath(p, root_dir))
                self.q.put(("log", "错误 %s: %s\n" % (os.path.relpath(p, root_dir), e)))
            if i % 5 == 0 or i == len(files):
                self.q.put(("progress", (i, len(files))))

        dt = time.time() - t0
        msg = ("文件: %d / %d 个含 JPEG3\n位图: %d 张转换成功，%d 张失败\n"
               "体积: %.1f MB -> %.1f MB\n耗时: %.0f 秒\n%s" % (
                   n_files, len(files), n_bitmaps, n_fail,
                   size_before / 1048576.0, size_after / 1048576.0, dt,
                   "（预演模式，未写入）" if not apply else ""))
        if backup_dir:
            msg += "\n备份目录: %s" % backup_dir
        if fail_list:
            msg += "\n\n有失败项，详见日志。"
        self.q.put(("log", "\n" + msg + "\n"))
        self.q.put(("done", msg))


def main():
    root = tk.Tk()
    try:
        root.call("tk", "scaling", 1.25)
    except tk.TclError:
        pass
    App(root)
    root.mainloop()


if __name__ == "__main__":
    main()
