# Basic LAN and WAN set-up

# 🖧 Packet Tracer Networking Lab Setup

---

## A. Overview

> **Summary**
> 
> 
> **This project documents my personal networking lab setup to practice core networking concepts like LAN setup, switch configuration, IP leasing via DHCP, WPA2-Personal wireless setup, and more.**
> 

---

## B. Goals

- Build and configure a basic LAN with 5 PCs and 2 switches.
- Set up a wireless router using **WPA2-Personal**.
- Document every step clearly for future reference and portfolio purposes.

---

## C. Hardware and Software Used

| Category | Items |
| --- | --- |
| **Hardware** | 5 PCs, 2 Switches, , 1 Wired Router, 1 Wireless Router |
| **Software** | Cisco packet tracer |
| **Tools** | Command Prompt, SSH, Notepad++ |

---

## D. Network Topology

![lab-set-up.png](lab-set-up.png)

---

## E. Installation and setup

**Step 1**

1. Open Cisco Packet Tracer.

2. From the End Devices section, drag and drop the following devices onto the

workspace:

- 5 PCs (PC-0, PC-1, PC-2, PC-3, PC-4)
- 3 Laptops (Laptop-0, Laptop-1, Laptop-2)
- 2 Printers (Printer-0, Printer-1)

3. From the Network Devices section, drag and drop:

- 1 Router (Router-0)
- 2 Switch (Switch-0, Switch-1)
- 1 Wireless Router (WirelessRouter-0)

![01-set-up-devices.png](01-set-up-devices.png)

**Step 2: Physically Connect Devices**

**Wired Connections**

1. Click on the cable icon and select a copper straight-through cable.

2. Connect each PC to the Switch using the copper straight-through cable.

- PC-0 to any port on the first Switch-0 (e.g., FastEthernet 0/1).
- PC-1 to the first switch (FastEthernet 0/2).
- PC-2 to the first switch (FastEthernet 0/3)
- PC-3 to the second switch (FastEthernet 0/1).
- PC-4 to to the second switch (FastEthernet 0/2).

3. Connect the two Printers to the first and second Switch.

4. Connect the Router to the Switch using a straight-through cable (Router's

GigabitEthernet 0/0 to Switch’s FastEthernet 0/4).

**Wireless Connections**

1. Connect WirelessRouter-0 to the Router.

Use a crossover cable to connect WirelessRouter-0’s Internet port to

Router’s GigabitEthernet 0/1

**Step 3: Configure the Router**

1. Click on Router-0, go to the CLI tab.

2. Configure the Router’s GigabitEthernet 0/0 interface

```bash
**Router> enable**
```

```jsx
**Router# configure terminal**
```

```jsx
**Router(config)# interface gigabitEthernet 0/0**
```

```jsx
**Router(config-if)# ip address 192.168.1.1 255.255.255.0**
```

```jsx
**Router(config-if)# no shutdown**
```

```jsx
**Router(config-if)# exit**
```

3. Configure the Router’s GigabitEthernet 0/1 interface (for

WirelessRouter-0):

```bash
**Router(config)# interface gigabitEthernet 0/1**
```

```bash
**Router(config-if)# ip address 192.168.2.1 255.255.255.0**
```

```bash
**Router(config-if)# no shutdown**
```

```bash
**Router(config-if)# exit**
```

**4.** Set up a DHCP Pool for wired devices on the 192.168.1.0/24 network:

```bash
**Router(config)# ip dhcp pool LAN**
```

```bash
**Router(dhcp-config)# network 192.168.1.0 255.255.255.0**
```

```bash
**Router(dhcp-config)# default-router 192.168.1.1**
```

```bash
**Router(dhcp-config)# exit**
```

5. Set up a DHCP Pool for wireless devices on the 192.168.2.0/24 network:

```bash
**Router(config)# ip dhcp pool WLAN**
```

```bash
**Router(dhcp-config)# network 192.168.2.0 255.255.255.0**
```

```bash
**Router(dhcp-config)# default-router 192.168.2.1**
```

```bash
**Router(dhcp-config)# exit**
```

6. Save the configuration:

```bash
**Router# write memory**
```

**Step 4: Configure the Wireless Router**

1. Click on WirelessRouter-0, go to the GUI tab.

2. Set the Internet IP Address:

Select DHCP for the Internet Connection Type (this allows the Wireless

Router to obtain an IP from Router-0).

3. Go to the Wireless section:

- Change the SSID to something like "SmallOfficeWiFi".
- Set WPA2-PSK security and create a passphrase (e.g., "office123").

4. Go to the LAN settings and configure:

`IP Address: 192.168.2.1`

`Subnet Mask: 255.255.255.0`

5. Enable the DHCP server to provide IP addresses on the 192.168.2.0/24 network.

**Step 5: Configure the End Devices**

**For Wired PCs**

1. Click on PC-0, then go to the Desktop tab and open the IP Configuration window.

- Set the IP configuration to DHCP (this allows the PC to receive an IP
    
    address from the router).
    
    ![13-DHCP-successful.png](13-DHCP-successful.png)
    

2. Repeat this step for PC-0, PC-1, PC-2, PC-3, PC-4 and Printer-0, Printer-1.

**For Wireless Laptop**

1. Click on Laptop-0, then go to the Desktop tab and open the IP Configuration

window.

- Select DHCP for automatic IP addressing.

2. Go to the Laptop-0's Config tab, select Wireless0, and choose the

"SmallOfficeWiFi" SSID.

- Enter the passphrase ("office123") and connect.
- Repeat the same process for the remaining laptops

**For Printer**

**Step 1: Choose a Static IP Address**

The printer should have an IP in the same network as the other wired devices but

outside the DHCP pool to avoid conflicts.

For example, if your DHCP pool is from `192.168.1.2 to 192.168.1.100`, you can

assign the printer an IP like `192.168.1.101`.

**Step 2: Set the Printer to Use a Static IP**

In the IP Configuration window, uncheck the box that says DHCP to disable

dynamic IP assignment.

Manually enter the following details:

● IP Address: Set this to the chosen static IP, for example, `192.168.1.105`.

● Subnet Mask: This will typically be `255.255.255.0`, assuming you're using a

standard class C network.

● Default Gateway: Set this to the IP of the router, which is `192.168.1.1` (the router

that serves as the default gateway for the wired LAN).

● DNS Server: Enter the same IP as the default gateway (`192.168.1.1`) or a public

DNS server (like `8.8.8.8`).

![15-hallway-printer.png](15-hallway-printer.png)

**Click Apply to save the configuration.**

**Test the Setup**

1. From PC-0, open the Command Prompt and type:

```bash
Ipconfig
```

Verify the assigned IP address (should be in the range of `192.168.1.x`).

Ping the router (ping `192.168.1.1`) to check the connection.

2. From Laptop-0, open the Command Prompt, type:

```bash
Ipconfig
```

Ensure the IP is in the `192.168.2.x` range.

Ping the router (ping `192.168.2.1`) to check the wireless connection.

3. Test Connectivity to the Printer

Click on any of the PCs (e.g., PC-0), go to the Desktop tab, and open the

Command Prompt.

Type the following command to ping the printer’s static IP address

ping `192.168.1.101`

- If everything is configured correctly, you should receive reply messages
    
    confirming that the PC can communicate with the printer.
    
    ![17-IT-pc-ping-hallway-printer.png](17-IT-pc-ping-hallway-printer.png)
    

---

---

---

---

## F. Lessons Learned

- Setting up **interconnected switches** for scalable LANs
- Configuring **DHCP** on routers and understanding address pools
- Assigning **static IPs** for key network devices like printers
- Creating a **segmented wireless network** using a wireless router
- Using **basic commands** like `ping`, `ipconfig`, `show ip dhcp binding`, etc., to troubleshoot

---

---

---