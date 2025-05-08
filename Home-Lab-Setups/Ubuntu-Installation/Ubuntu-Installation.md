# Ubuntu Home Lab Setup in VMware 🐧💻

This guide documents how I installed **Ubuntu** inside **VMware Workstation**, including system specs, installation steps, and what comes next. Perfect for testing, development, or a lightweight Linux desktop VM.

---

## ⚙️ System Specs

- **Host Machine:** My personal computer
- **Hypervisor:** VMware Workstation / Player
- **Guest OS:** Ubuntu 22.04 LTS (Desktop)
- **Ubuntu VM Configuration:**
  - 🧠 **Memory:** 2 GB
  - ⚙️ **CPU:** 2 processors
  - 💾 **Disk Size:** 30 GB
  - 🌐 **Network:** NAT

---

## 📥 Step-by-Step Installation

### 1. 🔽 Download Ubuntu ISO
- Go to the official Ubuntu download page:  
  [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop)
- Download the latest LTS version (e.g., Ubuntu 22.04 LTS)

### 2. 🧱 Create a New Virtual Machine in VMware
- Open VMware Workstation or Player
- Click **Create New Virtual Machine**
- Choose:
  - **Typical (recommended)** setup
  - Select the **Ubuntu ISO** as installer image
- OS type: **Linux > Ubuntu 64-bit**
- Name the VM (Ubuntu-01)
- Allocate:
  - **2 GB RAM**
  - **2 processors**
  - **30 GB disk**

  ![Resources](images/02-resources.png)

### 3. 💿 Install Ubuntu
- Start the VM
- Choose **Install Ubuntu**
![installing Ubuntu](images/03-installing-ubuntu.png)
- Select language, keyboard, and **Normal Installation**
![Language](images/05-language.png)
![Keyboard](images/06-keyboard.png)

- Optionally check for updates during install
- Use entire disk (the virtual 30 GB)
- Set:
  - Your name, computer name, username, and password
  ![Account details](images/08-create-account.png)
  ![time zone](images/09-time-zone.png)

- Click **Install** and wait for completion
   ![install](images/10-install.png)
   ![Installing](images/11-installing-the-system.png)
- Ubuntu Installed
![installed](images/12-installed.png)
- Reboot the VM when prompted

---

## 🖥️ First Boot & Setup

Once the VM restarts:
- Log in using the username and password I created
![Log in](images/13-log-in.png)
![welcome note](images/14-welcome-Note.png)
![ubuntu ready](images/15-ubuntu-ready.png)
- Open **Settings > About** to confirm system details
![system information](images/16-about-system.png)
- Open Terminal to start exploring!
![Terminal commands](images/17-terminal-commands.png)
```bash
uname -a
hostname
whoami
pwd
ls
mkdir
```

```bash
sudo apt update && sudo apt upgrade -y
```
![sudo commands](images/18-sudo-apt-update.png)

---

## ✅ What I plan to do With It

* 🧪 Test Linux commands and bash scripting
* 🕸 Set up SSH access and firewall rules
* 💻 Configure a basic web server
* 🔐 Experiment with tools like Docker, SSH, Git
* 🌍 Browse and access the internet in a secure VM

---

## ☁️ Future Plans

* Set up OpenSSH for remote access
* Install VS Code and development tools
* Create and snapshot multiple configurations
* Use Ubuntu as a base for LAMP/LEMP stack testing

---

Thanks for checking out my Ubuntu VM setup!

Happy hacking! 🧑‍💻🐧✨

