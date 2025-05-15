# 🌐 DNS Server Setup for Active Directory with ADI, Secondary Zone, Reverse Lookup & Forwarder 🚀

This project documents how I set up a full-fledged **DNS infrastructure** for my **Active Directory** domain on Windows Server. It includes:
- A **Primary Zone integrated with Active Directory**
- A **Secondary Zone** on a second DNS server
- A **Reverse Lookup Zone**
- A **DNS Forwarder** to Google DNS
- All running inside a hybrid **VMware + VirtualBox** lab setup 💻🔥

---

## 🧠 My Project Summary

| Component              | Server           |
|------------------------|------------------|
| 🧠 Primary DNS (ADI)   | `TESTDC-01`      |
| 🧠 Secondary DNS       | `TESTDC-03`      |
| 🔁 Reverse Lookup Zone | Both servers     |
| 🌍 DNS Forwarder       | Google DNS (8.8.8.8) |

---

## 🚀 My Step-by-Step Setup Process

### ☁️ Step 1: Lab Environment Setup

1. Installed Windows Server 2022 on `TESTDC-01` and `TESTDC-03`.
2. Set up both in a **VMware** and **VirtualBox** hybrid environment.
3. Promoted `TESTDC-01` to a **Domain Controller** with AD DS, DNS roles.
4. Joined `TESTDC-03` to the `manueltech.com` domain.

---

### 🛠️ Step 2: Installed DNS Role on Both Servers

- On both servers, opened **Server Manager** > `Add Roles and Features`.
- Selected and installed **DNS Server**.
- Ensured services started and opened **DNS Manager**.

---

### 🧩 Step 3: Created Primary Zone on `TESTDC-01`

1. Opened **DNS Manager** on `TESTDC-01`.
2. Right-clicked **Forward Lookup Zones** > `New Zone`.
![New zone](images/26-new-zone.png)
3. Selected:
   - Zone type: **Primary Zone**
   ![Zone type](images/27-primary-zone.png)
   - Zone name: `Manueltech.com`
   ![Zone name](images/28-zone-name.png)
   - Stored in Active Directory (✅ AD-Integrated)
   - Allow only **Secure Dynamic Updates**
   ![Dynamic updates](images/29-allow-dynamic-updates.png)
4. Confirmed the zone was created and automatically replicated to AD 🧠.
![Finish](images/30-finish.png)
---

### 🔁 Step 4: Created Reverse Lookup Zone on `TESTDC-01`

1. Still in DNS Manager, right-clicked **Reverse Lookup Zones** > `New Zone`.
![Reverse lookup](images/40-reverse-lookup-zone.png)
2. Selected:
   - Zone type: **Primary**
    ![zone type](images/41-primary-zone.png)
    ![All dns server](images/42-to-all-dns-servers.png)
   - Network ID: `192.168.255`
   ![Network ID](images/44-network-ID.png)
   - AD-Integrated and secure updates enabled.
   ![Secure updates](images/45-secure-updates.png)
3. Verified that PTR records were dynamically created 🎯.
![PTR records](images/47-reverse-lookup-active.png)

---

### 📡 Step 5: Created Secondary Zone on `TESTDC-03`

1. Opened **DNS Manager** on `TESTDC-03`.
2. Right-clicked **Forward Lookup Zones** > `New Zone`.
![FLZ](images/33-sec-zone-sec-server.png)
3. Chose:
   - Zone type: **Secondary**
   ![Secondary](images/34-secondary-zone.png)
   - Zone name: `manueltech.com`
   ![Zone name](images/35-zone-name.png)
4. Entered master server IP: `192.168.1.10` (IP of TESTDC-01).
![IP](images/36-add-primary-zone-server.png)
5. Zone successfully pulled zone data from the primary 💪🏽.
![Zone active](images/38-zone-active.png)
6. Read only zone (secondary zone)
![read only](images/39-read-only-zone.png)
---

### 🌍 Step 6: Added Google DNS as Forwarder

1. On `TESTDC-01`, right-clicked the server node > **Properties**.
2. Switched to the **Forwarders** tab.
3. Added: `8.8.8.8` and `8.8.4.4` (Google DNS).
![google DNS](images/48-forward-traffic.png)
![Forwarders](images/49-forwarders.png)
4. Ensured status was **"Responding"** ✅.


---

### 🧪 Step 7: Testing DNS Resolution

- From domain clients, tested:
  - Internal name resolution: `ping TESTDC-01.manueltech.com`
  - External resolution: `ping google.com`
- Both worked perfectly! DNS is resolving internal and external queries 🎉

---

## 🔑 Key Concepts Demonstrated

- Active Directory Integrated DNS (ADI)
- Secure Dynamic DNS updates
- Forward & Reverse Lookup Zones
- DNS Zone replication
- Secondary DNS zone setup
- DNS Forwarding to Google DNS
- Virtual lab networking across VMware + VirtualBox

---

## 📚 What I Learned

- How DNS and AD work tightly together 🧠
- The role of **secure dynamic updates** in enterprise environments 🔒
- How to set up and replicate DNS zones across servers 🧩
- Managing both **forward** and **reverse** lookups effectively
- How to integrate external DNS through **forwarders**

---

## 💡 Tools & Tech Used

- Windows Server 2022 (TESTDC-01, TESTDC-03)
- DNS Manager
- VMware Workstation
- Oracle VirtualBox
- CMD & PowerShell for testing
- Active Directory Domain Services
