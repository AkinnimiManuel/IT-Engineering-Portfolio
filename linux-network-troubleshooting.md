# 🖥️ Linux Troubleshooting: Fixing Internet Issues  

## 🛑 Problem  
A user installed Ubuntu but cannot connect to the internet.  

## 🔍 Troubleshooting Steps  
1. Checked network interface using `ip a`.  
2. Restarted the network service using `systemctl restart NetworkManager`.  
3. Tested DNS resolution using `nslookup google.com`.  
4. Assigned a manual IP address using `ip addr add`.  
5. Checked firewall rules and disabled `ufw` temporarily.  

## ✅ Outcome  
The internet connection was restored after manually assigning an IP and disabling the firewall.  

---
🔗 **Back to Portfolio**: [Home](./README.md)
