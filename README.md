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

# 📄 [View the usage guide (PDF)](./How_to_use_(rm)&(restore).pdf)

---

## 🙋 Need Help or Suggest Changes?

If you encounter any problems using this project or want to suggest improvements, feel free to [open an issue](https://github.com/Thin-Panha/safe-rm-restore/issues) or contact me directly.

Please **do not push directly** — this repository only accepts changes through pull requests.

🔒 Only the project owner can push to this repository. Others may contribute via pull requests.


---

## 👤 Creator

This project was created by:

**Name: Panha Thin**  
**ID: IDTB100329**  
**​​​CADT_Gen_10**  
**Cyber: G2**  

📍 GitHub: [@Thin-Panha](https://github.com/Thin-Panha)  




