# 🪟 Windows Server Setup Guide

This guide documents the steps I followed to install and configure **Windows Server** in my home lab. I used this environment to practice system administration tasks such as Active Directory, DNS, DHCP, file sharing, and more.


## ✅ Requirements

- **Windows Server ISO** (Windows Server 2022)
- Virtualization platform (VMware)
- Laptop configuration **2 GB RAM**, **2 CPUs**, and **20 GB** disk space
- Internet connection for activation and updates

## 🛠️ Installation Steps

### 1. Create a Virtual Machine

- I Opened my VMware workstation pro and created a new VM with the following specs:
  - **Name**: Windows Server
  - **Type**: Microsoft Windows
  - **Version**: Windows 2022 (64-bit)
  - **RAM**: 2096 MB (minimum)
  - **CPU**: 2 cores
  - **Disk**: 20 GB

- ![VM ware interface](images/01-vmware-pro-application.png)

- ![Installation disk](images/02-selecttheinstallationdisk.png)

- ![choosing the server name](images/03-choosetheservername)

- ![select the name of the server](images/04-select-the-name-of-the-server)

- ![choosing the disk size](images/05-choose-the-disk-size)


### 2. Mount the ISO & Boot

- I went back to settings to attach the Windows Server ISO to the virtual CD/DVD drive
- ![Loading the ISO image](images/06-load-the-iso-image)

- I Started the VM by pressing the play button
- ![Power on the machine](images/07-power-on-the-machine)

- Choose:
  - Language: English (United States)
  - Time and currency: English (US)
  - Keyboard: US
- ![chhose the language](images/08-start-the-installation)

- - Choose edition: **Windows Server Standard (Desktop Experience)

- ![Select the standard evaluation](images/09-select-the-standard-evaluation-DE)

### 3. Begin Installation

- Click **Install Now**
- ![begin installation of the server](images/10-installation-started)


## 🧱 Post-Installation Setup

### 4. Set Administrator Password

- Once installation finishes,I set a strong admin password
- ![choosing an admin password](images/11-choose-the-admin-password)

-installation completed
- ![installation completed](images/12-server-insallation-completed)

-server manager up and running
- ![server manager](images/13-server-manager-up-and-running)


### 5. Install Guest Additions VMware Tools

- This helps with better resolution, clipboard sharing, etc.

### 6. Set Static IP Address

- I went to the `Control Panel > Network and Sharing Center > Change adapter settings`
- Right-click on Ethernet > Properties > IPv4
- Then I Set an IP and use google DNS:
  - IP Address: `192.168.x.x`
  - Subnet Mask: `255.255.255.0`
  - Gateway: `192.168.x.1`
  - DNS: `8.8.8.8`



## ⚙️ Basic Configuration

### 7. Rename the Server

- I Opened PowerShell as Admin and use the following command to rename my serverto STEF001 and restarted immediately so the changed can take effect:
  ```powershell
  Rename-Computer -NewName "STEFF-001" -Restart


🧠 Lessons Learned
   - Always install Guest Additions early for better usability

   - Static IPs make domain services much easier to configure

   - PowerShell is your best friend for automation

