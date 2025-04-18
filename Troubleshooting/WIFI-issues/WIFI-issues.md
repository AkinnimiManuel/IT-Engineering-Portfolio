
# 🛠️ Troubleshooting Wi-Fi Connection Issues – IT Support Portfolio

## 👋 Introduction

As part of my hands-on experience in IT Support, I worked on resolving a Wi-Fi connectivity issue reported on a Windows laptop. The user was able to connect to the wireless network, but its showing No internet :frowning_face:. Below is a detailed documentation of how I approached and resolved the issue.

---

## 🧩 Issue Summary

- Laptop connected to a WIFI network but showing no internet :worried:. 
- Other nearby devices could connect to the same Wi-Fi without issues.

![NO internet while connected to a WIFI](images/01-wificonnected.png)

---

## 🔧 My Troubleshooting Steps

### ✅ 1. Checked Proxy Settings and DNS Configuration
- I Opened `Internet Options` from Control Panel.
![internet properties](images/02-internetproperties.png)
- Went to the **Connections** tab → **LAN Settings**.
![LAN settings](images/03-LAN-settings.png)
- Ensured **"Use a proxy server..."** was unchecked.

---

### ⚙️ 2. Verified IPv4 Settings
- I Went to **Control Panel** → **Network and Sharing Center** → **Change Adapter Settings**.
![Sharing center](images/04-Sharing-center.png)
- Right-clicked on the active Wi-Fi adapter and selected **Properties**.
![Wifi properties](images/05-wifiproperties.png)
- Double-clicked **Internet Protocol Version 4 (TCP/IPv4)**.
- Ensured **Obtain an IP address automatically** and **Obtain DNS server address automatically** were selected.
![IPV4 settings](images/06-IPV4-settings.png)

---

### 🧰 3. Used the Built-in Network Troubleshooter
- Navigated to **Settings** → **Network & Internet** → **Status**.
- Clicked on **Network Troubleshooter**.
![Netwrok Troubleshooter](images/07-network-troubleshoot.png)
- Followed the on-screen steps to identify and apply basic fixes.
![Detecting problems](images/08-detecting-problems.png)
![Select network adapter with issues](images/09-select-network-adapter.png)
- Searching for problems
![Searching for problems](images/10-serching-for-problems.png)
- Possible solution to the problem and applying fixes
![Possible solution](images/11-possible-solution.png)
![reseting the network](images/12-reseting-the-network.png)
![resolving the problem](images/13-resolving-problems.png)
- Restarting the system after fixing the issue
![Restarting the system](images/14-restarting-the-system.png)
- Problem fixed
![Fixed](images/15-fixed.png)

---

### 🔄 4. Performed a Full Network Reset
- I Went to **Settings** → **Network & Internet** → **Advanced network settings**.
![Network & internet](images/16-network&internet.png)
- Selected **Network Reset**.
![Nework Reset](images/17-network-reset.png)
![Reset now](images/18-reset-now.png)

- Restarted the system as prompted.

---

### 💻 5. Ran Key Network Commands via CMD
Opened **Command Prompt as Administrator** and ran:

```bash
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns
```
![first command](images/20-first-command.png)
![second command](images/22-second-command.png)
![Third command](images/24-third-command.png)
![Fourth command](images/25-fourth-command.png)
![Fifth command](images/26-fifth-command.png)
![sixth command](images/27-sixth-command.png)

- Restarted the system again to apply changes.

---

### 📡 6. Updated the Wi-Fi Adapter Driver
- Opened **Device Manager** → **Network Adapters**.

![Device manager](images/28-device-manager.png)
- Right-clicked the Wi-Fi adapter → **Update Driver** (checked both auto and manual).
![Update Driver](images/29-update-driver.png)
![browse for Drivers](images/30-browse-for-driver.png)
![choose available driver](images/31-pick-available-driver.png)
![pick driver](images/32-choose-the-driver.png)
- Installing the driver

![instaling driver](images/33-installing-drivers.png)

- Driver successfully installed

![Successful installation](images/34-successfully-updated.png)

### 📡 7. Uninstalled the Wi-Fi Adapter Driver

- Eventually uninstalled the adapter and restarted the system to force a clean reinstall.
![uninstall driver](images/35-uninstall-driver.png)
![Delete driver](images/36-delete-the-driver-software.png)
![Uninstall driver](images/37-uninstalling.png)

---

### 🔍 8. Used `services.msc` to Restart Critical Network Services
- Pressed `Win + R`, typed `services.msc`, and hit Enter.

![Services.msc](images/38-services-msc.png)
- Located and ensured the following services were **running** and set to **Automatic**:
  - **WLAN AutoConfig**
  - **Network Connections**
  ![Network connections](images/41-network-connections.png)
  - **Wi-Fi Direct Services Connection Manager**
  ![Wifi direct services](images/39-wifi-direct-services.png)
  ![start wifi direct services](images/40-click-start.png)

- Restarted any that were stopped.

---

## ✅ Outcome

After restarting the Wi-Fi services and reinstalling the driver, the laptop successfully connected to the Wi-Fi network. Internet access was fully restored and stable. I also educated the user on how to check these settings in case the issue reoccurs.
- It worked :smile: :grin:

![It worked](images/42-wifi-working.png)


---

## 🧰 Tools & Utilities Used

- `Command Prompt (Admin)`
- `Device Manager`
- `Services.msc`
- `Network Troubleshooter`
- `Windows Settings` and `Control Panel`

---

## ✍️ Personal Reflection

This experience helped me strengthen my practical troubleshooting workflow and reinforced how crucial it is to approach network issues methodically. From checking proxy settings to verifying services, each step built up to a successful resolution.
---
