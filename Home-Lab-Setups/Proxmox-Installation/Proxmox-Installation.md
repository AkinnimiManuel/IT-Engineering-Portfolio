# Proxmox Home Lab Setup in VMware 🧪💻

Welcome to my Proxmox Virtual Environment (VE) setup, running inside **VMware Workstation** on my local PC. This guide walks through how I installed Proxmox, configured it, and accessed the web interface.

---

## ⚙️ System Specs

- **Host Machine:** My personal computer
- **Hypervisor:** VMware Workstation pro
- **Guest VM:** Proxmox VE
- **Proxmox VM Configuration:**
  - 🧠 **Memory:** 2 GB
  - ⚙️ **CPU:** 2 processors
  - 💾 **Disk Size:** 100 GB
  - 🌐 **Network:** Bridged (for direct access)
  - **Web Interface IP:** `https://192.168.255.190:8006`

---

## 📥 Step-by-Step Installation

### 1. 🔽 Download Proxmox VE ISO
- I downlaoded the ISO file from the official website: [https://www.proxmox.com/en/downloads](https://www.proxmox.com/en/downloads)
- Download the latest **Proxmox VE ISO Installer**

### 2. 🧱 Create a New Virtual Machine in VMware
- Open VMware Workstation or Player
- Click **Create New Virtual Machine**
- Select **Installer disc image file (ISO)** and choose the Proxmox ISO
- OS type: Select **Linux > Debian 12 64-bit**
- Name the VM `Proxmox01` or anything you like
- Allocate:
  - **2 GB RAM**
  - **2 processors**
  - **100 GB hard disk**
  - **Bridged Network Adapter**
![Allocate resources](images/01-allocate-resources.png)

### 3. 💿 Install Proxmox VE
- Boot the VM with the ISO
- Select **Install Proxmox VE** from the menu
![Install proxmox](images/02-choose-UI.png)
![installation Started](images/03-installation-started.png)

- Accept the license agreement
![license Agreement](images/04-license-agreement.png)

- Choose the 100 GB disk you allocated
![choose disk](images/05-target-hard-disk.png)
- Set the country, time zone, and keyboard layout
![time and country](images/06-country-and-time.png)
- Configure:
  - **Password:** Choose a secure root password
  - **Email:** Enter your admin email
  ![password and email](images/07-password-and-email.png)
- Network setup:
  - **IP Address:** Manually or automatically assigned (mine: `192.168.255.190`)
  ![Network configuration](08-network-configuration.png)
- Complete the installation and reboot
![installation summary](images/09-information-summary.png)
- Log into the proxmox terminal interface
![Log in](images/10-log-in.png)
![Access granted](images/11-gained-access.png)

---

## 🌐 Access the Proxmox Web Interface

### How to Access:
1. Open a browser on your host PC
2. I typed in `https://192.168.255.190:8006`
3. Ignore any SSL certificate warning and proceed
4. Login using:
   - **Username:** root
   - **Password:** emmylashtins
   ![Web login](images/12-web-interface-log-in.png)
   

✅ I can now access the Proxmox dashboard!😎😁
![proxmox web UI](images/13-proxmox-VE.png)

---

## 🎉 What's Next?
With Proxmox up and running, I can:
- Create nested VMs
- Test clustering and storage
- Practice snapshots and backups
- Experiment with Linux/Windows VM setups

---

## ☁️ Future Plans
- Add ZFS storage
- Enable nested virtualization inside Proxmox
- Integrate with cloud-like solutions (Ceph, PBS, etc.)

---

Thanks for checking out my lab setup!

Happy homelabbing! 🛠️🚀
