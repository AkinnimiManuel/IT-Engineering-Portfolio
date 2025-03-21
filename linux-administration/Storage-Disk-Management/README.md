
# **Storage & Disk Management**  

This folder contains disk and storage management solutions for Linux systems.  

## **🛠 Common Issues & Fixes**  

### 💾 **Checking Disk Usage & Free Space**  
- Show disk space usage:  
  ```bash
  df -h
  ```

  Check disk usage by directories:
```
du -sh /home/*
```
🔍 Mounting & Unmounting Drives
List available disks:
```
lsblk
```
Mount a partition:
```
sudo mount /dev/sdb1 /mnt
```
Unmount a partition:
```
sudo umount /mnt
```
⚡ Fixing Corrupted File System
Check and repair disk:
```
sudo fsck -y /dev/sda1
```
Reformat a partition:
```
sudo mkfs.ext4 /dev/sdb1
```


✅ Key Takeaways:
✔ Monitor and manage disk space efficiently.
✔ Mount and troubleshoot external drives.
✔ Fix file system errors and improve disk performance.
