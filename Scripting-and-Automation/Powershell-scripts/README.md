# ⚡ PowerShell Scripts Automation 🪟💻

Hello there! I'm **Emmanuel Stefan** 👋  
This part of my portfolio focuses on my journey into **PowerShell scripting** — automating tasks in Windows environments to boost productivity, enhance system administration, and reduce human error. 🧠⚙️

---

## 🧰 Why PowerShell?

PowerShell is more than just a shell. It's a powerful **task automation and configuration management** framework that makes Windows management a breeze. Whether you're managing users in Active Directory, checking system health, or automating backups — PowerShell has got your back! 💪

---

## 🛠️ Scripts You'll Find Here

| Script Name | Description | Use Case |
|-------------|-------------|----------|
| `bulk-user-creation.ps1` | Create multiple users in Active Directory from a CSV | Onboarding staff or students 👥 |
| `clear-temp.ps1` | Clears temp files to free up space | System maintenance 🧹 |
| `wifi-password-export.ps1` | Extracts saved Wi-Fi passwords | Quick recovery of forgotten keys 📶 |
| `user-logoff.ps1` | Logs off all inactive users | Enforce security & save power 🔒 |
| `auto-backup.ps1` | Back up important directories | Regular backups to external drives 💾 |
| `service-check.ps1` | Checks the status of critical Windows services | Monitoring & alerts 🛡️ |

---

## 🚀 How to Run a Script

### Step 1: Open PowerShell as Administrator
🔒 Required for most system tasks

### Step 2: Set Execution Policy (if not already set)
```powershell
Set-ExecutionPolicy RemoteSigned
````

### Step 3: Run the Script

```powershell
.\script-name.ps1
```

---

## 🧠 What I’ve Learned

* Automating **Active Directory** tasks like user creation and group management
* Writing robust, readable scripts with parameters and logging
* Using **PowerShell loops, conditionals, and error handling**
* Secure credential storage and best practices
* Task scheduling using **Windows Task Scheduler**

---

## 🔐 Security Reminder

Always review scripts before running — especially those that modify system state or use elevated privileges.
Use `Test-Path`, `-WhatIf`, and `-Confirm` flags when in doubt. Safety first! 🧯

---

## 📌 Coming Soon

* 🔄 Scheduled backups to OneDrive or external HDD
* 📊 Log file analysis and reporting
* 🗃️ Inventory script for listing installed software
* 🧑‍💻 Remote PC management using PowerShell Remoting

