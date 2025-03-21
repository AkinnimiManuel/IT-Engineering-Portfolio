# **System Monitoring & Performance Optimization**  

This folder contains tools and techniques for monitoring system performance and optimizing Linux servers.  

## **🛠 Common Issues & Fixes**  

### 📊 **Checking CPU & RAM Usage**  
- Show real-time system resource usage:  
  ```bash
  top
  ```

  Use htop (if installed):
```
htop
```
🔥 Fixing High CPU Load
Find high CPU usage processes:
```
ps aux --sort=-%cpu | head -10
```
Kill a process by PID:
```
sudo kill -9 PID
```
🚀 Improving System Performance
Clear RAM cache:
```
sudo sync && sudo sysctl -w vm.drop_caches=3
```
Optimize system startup:
```
sudo systemctl disable unused-service
```
✅ Key Takeaways:
✔ Monitor and analyze CPU, RAM, and process usage.
✔ Identify and terminate resource-heavy processes.
✔ Optimize system performance for better efficiency.
