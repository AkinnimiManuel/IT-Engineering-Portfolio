# **Networking Issues & Troubleshooting**  

This folder contains troubleshooting guides for common Linux networking problems.  

## **🛠 Common Issues & Fixes**  

### 🌐 **No Internet Connection**  
- Check network status:  
  ```bash
  ip a
  ```
  
Restart the network service:
```
sudo systemctl restart NetworkManager
```
🔌 Fixing SSH Connection Issues
Ensure SSH service is running:
```
sudo systemctl status ssh
```

Restart SSH service:
```
sudo systemctl restart ssh
```
Allow SSH through firewall:
```
sudo ufw allow 22/tcp
```
🚀 Fixing Slow Internet Speed
Check latency with ping:
```
ping -c 5 google.com
```

Flush DNS cache:
```
sudo systemd-resolve --flush-caches
```

✅ Key Takeaways:
✔ Troubleshoot network connectivity issues.
✔ Fix SSH access problems for remote management.
✔ Improve internet speed and resolve DNS issues.
