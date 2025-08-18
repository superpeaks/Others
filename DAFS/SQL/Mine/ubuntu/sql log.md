To track and save MySQL queries **with their execution dates**, you'll need to enable MySQL's **general query log** or use a logging tool that records timestamps. Here's how to do it:

---

### 🗓️ Enable General Query Logging with Timestamps

#### 1. **Log to a Table**
```sql
SET GLOBAL log_output = 'TABLE';
SET GLOBAL general_log = 'ON';
```

Then query the log:
```sql
SELECT event_time, argument 
FROM mysql.general_log 
WHERE command_type = 'Query';
```
This gives you the **exact time** each query was executed.

#### 2. **Log to a File**
```sql
SET GLOBAL log_output = 'FILE';
SET GLOBAL general_log_file = '/path/to/query.log';
SET GLOBAL general_log = 'ON';
```

Then use:
```bash
tail /path/to/query.log
```
Or open the file in a text editor to see queries with timestamps.

---

### 🧠 Bonus: Filter by Date
If you're logging to a table, you can filter by a specific date:
```sql
SELECT event_time, argument 
FROM mysql.general_log 
WHERE DATE(event_time) = '2025-07-05';
```

---



That makes things simpler. Here's the updated `.bat` file that uses `root` as the user and `"password"` as the password—so you won’t be prompted interactively.

> ⚠️ _Heads-up: Storing passwords in plaintext is **not secure**, especially for the `root` user. Use this only for local/test environments and consider stronger security for production setups._

---

### ✅ `start_mysql_logging.bat`

```bat
@echo off
REM Start MySQL service
net start MySQL80

REM Create logs folder if it doesn't exist
if not exist "C:\mysql_logs" mkdir "C:\mysql_logs"

REM Enable general query logging
mysql -u root -ppassword -e ^
"SET GLOBAL log_output = 'FILE'; ^
SET GLOBAL general_log_file = 'C:/mysql_logs/query.log'; ^
SET GLOBAL general_log = 'ON';"

REM Launch MySQL CLI with custom prompt
mysql -u root -ppassword --prompt="uniquecode> "
```

---

This script will:
- Start the MySQL 8.0 service
- Set up query logging to a log file with timestamped queries
- Launch the MySQL command line client with a custom prompt


Absolutely! Here's a shell script for **Ubuntu** that will:

1. Start the MySQL 8.0 service
2. Enable general query logging to a file
3. Launch the MySQL CLI with a custom prompt (`uniquecode>`)

---

### 🐧 `start_mysql_logging.sh`

```bash
#!/bin/bash

# Start MySQL service
sudo systemctl start mysql

# Create logs folder if it doesn't exist
LOG_DIR="/var/log/mysql_logs"
sudo mkdir -p "$LOG_DIR"
sudo chown mysql:mysql "$LOG_DIR"

# Enable general query logging
mysql -u root -ppassword -e "
SET GLOBAL log_output = 'FILE';
SET GLOBAL general_log_file = '$LOG_DIR/query.log';
SET GLOBAL general_log = 'ON';
"

# Launch MySQL CLI with custom prompt
mysql -u root -ppassword --prompt="uniquecode> "
```

---

### 🛠️ Setup Tips

- 🔐 Replace `password` with your actual root password. For better security, consider using a `.my.cnf` file to avoid exposing it in plaintext.
- 📁 Make sure MySQL has write access to the log directory (`/var/log/mysql_logs`).
- 🧼 You can make the script executable:
  ```bash
  chmod +x start_mysql_logging.sh
  ```
  Then run it with:
  ```bash
  ./start_mysql_logging.sh
  ```

