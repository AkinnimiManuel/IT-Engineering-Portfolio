# 🪟 Windows Server Setup Guide

This guide documents the steps I followed to install and configure **Windows Server** in my home lab. I used this environment to practice system administration tasks such as Active Directory, DNS, DHCP, file sharing, and more.

---

## ✅ Requirements

- **Windows Server ISO** (e.g., Windows Server 2019 or 2022)
- Virtualization platform (e.g., VirtualBox, VMware, Hyper-V)
- At least **4 GB RAM**, **2 CPUs**, and **40 GB** disk space
- Internet connection for activation and updates

---

## 🛠️ Installation Steps

### 1. Create a Virtual Machine

- Open your virtualization platform (e.g., VirtualBox or VMware)
- Create a new VM with the following specs:
  - **Name**: Windows Server
  - **Type**: Microsoft Windows
  - **Version**: Windows 2019 or 2022 (64-bit)
  - **RAM**: 4096 MB (minimum)
  - **CPU**: 2 cores
  - **Disk**: 40 GB (dynamically allocated)

### 2. Mount the ISO & Boot

- Attach the Windows Server ISO to the virtual CD/DVD drive
- Start the VM
- Choose:
  - Language: English (United States)
  - Time and currency: English (US)
  - Keyboard: US

### 3. Begin Installation

- Click **Install Now**
- Choose edition: **Windows Server Standard (Desktop Experience)**
- Accept license terms
- Select **Custom: Install Windows only**
- Choose the unallocated disk > Click **Next**

---

## 🧱 Post-Installation Setup

### 4. Set Administrator Password

- Once installation finishes, set a strong admin password

### 5. Install Guest Additions (VirtualBox) / VMware Tools

- This helps with better resolution, clipboard sharing, etc.

### 6. Set Static IP Address

- Go to `Control Panel > Network and Sharing Center > Change adapter settings`
- Right-click on Ethernet > Properties > IPv4
- Set:
  - IP Address: `192.168.x.x`
  - Subnet Mask: `255.255.255.0`
  - Gateway: `192.168.x.1`
  - DNS: `8.8.8.8`



## ⚙️ Basic Configuration

### 7. Rename the Server

- Open PowerShell or Command Prompt as Admin:
  ```powershell
  Rename-Computer -NewName "WS-DC01" -Restart


🧠 Lessons Learned
Always install Guest Additions early for better usability

Static IPs make domain services much easier to configure

PowerShell is your best friend for automation
