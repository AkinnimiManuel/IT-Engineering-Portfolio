# 🖥️🔧 Basic LAN & WLAN Setup (Cisco Packet Tracer)

Welcome to my **Basic LAN & Wireless LAN Setup** project!  
This lab is one of my early hands-on exercises with networking fundamentals using **Cisco Packet Tracer**. It combines **wired and wireless networking**, **DHCP**, **static IPs**, **default gateway configuration**, and some basic **inter-device communication**. 🚀

---

## 🗂️ Topology Overview

Here's what I built:

### 🌐 LAN Segment
- 🖥️ **5 PCs**
- 🖨️ **2 Printers** (with static IPs)
- 🔌 **2 Switches**
- 🌐 **1 Router** (with DHCP enabled)

### 📡 Wireless Segment
- 💻 **3 Laptops**
- 📶 **1 Wireless Router** (separate network)

![Set-up-devices](images/01-set-up-devices.png)

---

## 🛠️ Configuration Steps

### 1️⃣ Connecting Devices
- PCs and printers were connected to the two switches using **copper straight-through cables**.

- Switches were connected to each other and to the **router**.
- Wireless router connected via **Ethernet to the router** (for internet simulation).
- Laptops connected wirelessly using the **SSID and WPA2 security**.
![connect devices](images/02-connect-devices.png)

### 2️⃣ IP Addressing

#### Assign each segment thier own IP address
![Seperate networks](images/03-seperate-networks.png)
- Clicked on router -> CLI -> typed in the following commands to enable port
```
int gi0/0
no shut
exit
int gi0/1
no shut
exit 
do wr
``` 
![Enable port](images/04-enable-port.png)

#### 📦 LAN Devices (PCs & Printers)
- **DHCP** enabled on the router interface for PCs:
  - **Network:** `192.168.1.0/24`
  - **Default Gateway:** `192.168.1.1`
![Set default gateway](images/06-set-default-gateway.png)


- 🖨️ **Printers** were manually assigned:
  - HALLWAY printer: `192.168.1.105`
  ![Hallway printer IP](images/15-hallway-printer.png)
  - MANAGER printer: `192.168.1.107`
  ![Manager printer](images/16-manager-printer.png)

#### 🌐 Router Configuration (LAN Side)

```bash
interface GigabitEthernet0/0
 ip address 192.168.1.1 255.255.255.0
exit

ip dhcp pool WiredLAN
 network 192.168.1.0 255.255.255.0
 default-router 192.168.1.1
 
```
![Set up DHCP](images/07-set-up-DHCP.png)

#### 🌐 Router Configuration (WLAN Side)

```bash
interface GigabitEthernet0/1
 ip address 192.168.2.1 255.255.255.0
exit

ip dhcp pool WirelessLAN
 network 192.168.2.0 255.255.255.0
 default-router 192.168.2.1

```
![Set up DHCP](images/07-set-up-DHCP.png)


### 3️⃣ Wireless Router & WLAN

* Wireless Router configured with a different **subnet**:

  * Network: `192.168.2.0/24`
  ![IP address](images/10-ip-address-of-wireless-router.png)
  * SSID: `MANUEL-TECH3`
  ![change SSID](images/08-change-the-SSID.png)
  * Security: WPA2-PSK, Password: `emmylashtins22`
  ![Set password](images/09-set-password.png)

* Laptops successfully connected to `MANUEL-TECH3` and acquired IPs automatically.
![connect laptop](images/11-connect-laptop.png)

![Laptop connected](images/12-laptop-connected-wirelessly.png)

### PCs DHCP successful
- IT-PC DHCP successful
![IT-PC](images/13-DHCP-successful.png)
- Admin PC DHCP successful
![Admin PC](images/14-admin-pc-dhcp.png)

---

## 🧪 Testing & Verification

✅ **PCs pinged each other successfully** across both switches.
✅ **All PCs printed to both printers** using static IPs.
![IT pc ping printer](images/17-IT-pc-ping-hallway-printer.png)
![HR pc ping printer](images/18-HR-PC-ping-manager-printer.png)
✅ **Laptops browsed the internet (simulated)** through the wireless router.
✅ **Ping tests confirmed separation of LAN and WLAN** unless routing is manually added.

---

## 🧠 What I Learned

* Setting up **interconnected switches** for scalable LANs
* Configuring **DHCP** on routers and understanding address pools
* Assigning **static IPs** for key network devices like printers
* Creating a **segmented wireless network** using a wireless router
* Using **basic commands** like `ping`, `ipconfig`, `show ip dhcp binding`, etc., to troubleshoot

---

## 📌 Future Improvements

* Introduce **VLANs** for better segmentation
* Enable **Inter-VLAN routing** for communication between wireless and wired networks
* Add **firewall ACLs** for basic security
* Simulate **internet access** through NAT configuration

