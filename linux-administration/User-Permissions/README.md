# **User & Permissions Management**  

This folder contains solutions for managing users, groups, and file permissions in Linux.  

## **🛠 Common Issues & Fixes**  

### 👤 **Adding & Managing Users**  
- Create a new user:  
  ```bash
  sudo useradd -m newuser
  sudo passwd newuser
  ```
  
Add user to sudo group:
```
sudo usermod -aG sudo newuser
```

🔐 Fixing File Permission Errors
Change file ownership:
```
sudo chown user:user file.txt
```
Modify file permissions:
```
chmod 755 script.sh
```
🚀 Granting & Restricting Root Access
Restrict sudo access:
```
sudo visudo
```
Remove a user from sudo group:
```
sudo deluser newuser sudo
```

✅ Key Takeaways:
✔ Manage user accounts and groups effectively.
✔ Fix permission-related errors on files and directories.
✔ Control user access to system resources.
