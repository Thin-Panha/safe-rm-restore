# 🗑️ Safe `rm` and `restore` Tool for Linux

## 📘 Overview

On Linux, the default `rm` command **permanently deletes** files and directories — with no way to recover them unless backups exist.

This project provides a **safe alternative to `rm`** by implementing:

- A custom `rm` script that **moves files to a trash folder** (`/tmp/trash/`) instead of deleting them.
- A `restore` script that allows you to **recover accidentally removed files**.

> 🧠 Think of it as a terminal-powered Recycle Bin!

---

## ✨ Features

- ✅ **Soft delete:** Files are moved to `/tmp/trash/`, not erased.
- 📁 **Directory support:** Use `-r` to remove folders.
- ♻️ **Restore support:** Bring back deleted files easily.
- 🧩 **Lightweight and shell-script based** — no external dependencies.

---

## 🛠️ Installation

Run the following script to install the custom `rm` and `restore` commands:

### 1. Clone the GitHub repository

```bash
git clone https://github.com/Thin-Panha/safe-rm-restore.git
```

### 2. Setup the script

```bash
cd safe-rm-restore
bash setup.sh
```

## 🚀 Usage

### Delete a file safely:
```bash
rm filename.txt
```

### Delete a directory safely:
```bash
rm -r foldername/
```

### Restore a deleted file or directory:
```bash
restore filename.txt
restore foldername
```

# 📄 [Click to download or view the guide](./How_to_use.pdf)





