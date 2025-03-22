# **Firewall & Security Hardening**  

This folder contains guides for configuring firewalls and implementing security best practices in Linux.  

## **🛠 Common Security Issues & Fixes**  

### 🔥 **Configuring UFW (Uncomplicated Firewall)**  
- Enable UFW:  
  ```bash
  sudo ufw enable
Allow SSH, HTTP, and HTTPS traffic:
bash
Copy
Edit
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
Check firewall rules:
bash
Copy
Edit
sudo ufw status verbose
🔐 Fail2Ban - Prevent Brute Force Attacks
Install Fail2Ban:
```
sudo apt install fail2ban -y
```
Enable protection for SSH:
```
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
```
Check failed login attempts:
```
sudo fail2ban-client status sshd
```
🛡 Disabling Root Login & Setting Up SSH Key Authentication
Disable root login:
```
sudo nano /etc/ssh/sshd_config
```
Change PermitRootLogin yes to:
```
PermitRootLogin no
```
Restart SSH service:
```
sudo systemctl restart ssh
```

✅ Key Takeaways:
✔ Secure Linux systems by configuring UFW and Fail2Ban.
✔ Harden SSH access with key authentication and root login restrictions.
✔ Reduce attack surfaces with best security practices.
