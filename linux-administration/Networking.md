```md
# **Networking Troubleshooting & Configuration**  

_A documentation of my hands-on experience troubleshooting and configuring networking in Linux._  

## **📌 Tasks I Performed**  
✅ Diagnosed and fixed network connectivity issues  
✅ Configured static and dynamic IP addresses  
✅ Resolved DNS issues using `/etc/resolv.conf`  
✅ Monitored network traffic with `tcpdump` and `iftop`  
✅ Restarted and managed network services  

---

## **🛠 Troubleshooting Common Network Issues**  

### **1️⃣ Checking Network Interface Status**  
When I experienced network connectivity issues, I used the following commands to check the status of my network interfaces:  
```bash
ip a        # Show all network interfaces and IP addresses
ifconfig    # Alternative way to check IP addresses
```
🔹 **Issue:** No IP address assigned?  
🔹 **Solution:** Restart the network service:  
```bash
sudo systemctl restart networking
```

---

### **2️⃣ Configuring Static and Dynamic IP Addresses**  
To configure a **static IP**, I modified the **Netplan** configuration in Ubuntu:  
```bash
sudo nano /etc/netplan/00-installer-config.yaml
```
Example static IP configuration:  
```yaml
network:
  ethernets:
    eth0:
      dhcp4: no
      addresses:
        - 192.168.1.100/24
      gateway4: 192.168.1.1
      nameservers:
        addresses:
          - 8.8.8.8
  version: 2
```
Then, I applied the changes:  
```bash
sudo netplan apply
```
🔹 **Issue:** Network settings not applying?  
🔹 **Solution:** Check for syntax errors in YAML and reapply.

---

### **3️⃣ Resolving DNS Issues**  
When my system couldn’t resolve domain names, I checked the DNS settings using:  
```bash
cat /etc/resolv.conf
```
🔹 **Issue:** DNS not responding?  
🔹 **Solution:** Manually update the DNS server:  
```bash
echo "nameserver 8.8.8.8" | sudo tee -a /etc/resolv.conf
```
Or, update the **Network Manager configuration**:  
```bash
sudo nano /etc/systemd/resolved.conf
```
Change:  
```ini
DNS=8.8.8.8
FallbackDNS=1.1.1.1
```
Then restart the service:  
```bash
sudo systemctl restart systemd-resolved
```

---

### **4️⃣ Monitoring Network Traffic**  
To analyze network traffic, I used:  
```bash
sudo tcpdump -i eth0
```
For a more user-friendly view:  
```bash
sudo iftop -i eth0
```
🔹 **Use Case:** This helped me detect **high bandwidth usage** on a specific port.


## **🛠 Key Learnings**  
✔ Diagnosing and fixing **network connectivity issues**  
✔ Configuring **static and dynamic IPs**  
✔ Resolving **DNS problems**  
✔ Monitoring **network traffic for troubleshooting**  
