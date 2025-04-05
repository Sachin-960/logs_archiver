


### 🗂️ Logs Archiver Script

This 🐧 Bash script compresses a given log directory into a `.tar.gz` archive and stores the archive in a **hardcoded output directory** named `log_backups`. The output directory is automatically created if it doesn't exist.

---

## ✨ Features

- 📥 Accepts a log directory as input
- 🕒 Automatically generates archive names based on the current date and time
- 📁 Creates the output directory (`log_backups`) if it doesn't exist
- 📦 Stores all archives neatly in one place
- ✅ Displays user-friendly status messages

---

## 🚀 Usage

### 🔐 1. Make the script executable

```bash
chmod +x Logs_archiver.sh
```

### ⚙️ 2. Run the script

```bash
./Logs_archiver.sh /path/to/your/logs
```

📌 Replace `/path/to/your/logs` with the actual directory you want to compress.

---

## 📂 Output

- Archives will be stored inside the `log_backups` directory located in the current working directory.
- 🧾 Archive name format:

```
logs_YYYYMMDD_HHMMSS.tar.gz
```

🧪 **Example:**

```
log_backups/logs_20250405_143025.tar.gz
```

---

## 🧪 Sample Output

```bash
📁 Output directory 'log_backups' does not exist. Creating it...
📦 Compressing '/var/log' into 'log_backups/logs_20250405_143025.tar.gz'...
✅ Archive created successfully at: log_backups/logs_20250405_143025.tar.gz
```

---

## ❗ Error Handling

- ❌ If no directory is passed:

```bash
Usage: ./Logs_archiver.sh <log-directory>
```

- ❌ If the input directory doesn't exist:

```bash
Logs directory '/path/to/logs' does not exist.
```

- ⚠️ If output directory creation fails:

```bash
Failed to create output directory.
```

---

## 👨‍💻 Author

**Sachin Dayal**  
💻 Passionate about DevOps, Automation, and Linux scripting  

---

📚 This project is part of the `log-archive-tool` from [roadmap.sh](https://roadmap.sh/projects/log-archive-tool) DevOps Projects.
