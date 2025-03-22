# **Bash Scripting for Automation**  

This folder contains useful Bash scripts for automating system administration tasks in Linux.  

## **📜 Example Automation Scripts**  

### 📌 **1. Automate System Updates**  
- This script updates all installed packages and cleans unnecessary files.  
  ```bash
  #!/bin/bash
  echo "Updating system packages..."
  sudo apt update && sudo apt upgrade -y
  sudo apt autoremove -y
  echo "System update complete!"
  ```

  Save this script as update-system.sh, then make it executable:
```
chmod +x update-system.sh
```
📌 2. Automated User Backup Script
This script backs up the /home directory and saves it with a timestamp.
```
#!/bin/bash
BACKUP_DIR="/backup"
TIMESTAMP=$(date +%F_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/home_backup_$TIMESTAMP.tar.gz"

echo "Creating backup..."
tar -czf $BACKUP_FILE /home
echo "Backup completed: $BACKUP_FILE"
```

Run this script to back up user data efficiently.
📌 3. Check Disk Space and Send Alerts
This script checks if disk usage exceeds a certain threshold and sends an alert.
```
#!/bin/bash
THRESHOLD=80
USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Warning: Disk usage is above $THRESHOLD%!"
else
    echo "Disk usage is at a safe level."
fi
```

✅ Key Takeaways:
✔ Automate repetitive system administration tasks.
✔ Schedule scripts with cron jobs for regular execution.
✔ Improve efficiency with custom Bash scripts.
