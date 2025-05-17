# 📡 System & Network Monitoring Lab

👋 Hello! I'm Emmanuel, and this project documents my hands-on journey in setting up **System and Network Monitoring** using open-source tools like **Zabbix**, **Prometheus**, and basic Linux networking utilities.

The goal of this lab is to understand how to:
- Monitor servers (Windows/Linux)
- Track performance metrics (CPU, memory, disk)
- Detect service or network issues in real time
- Set up alerts to get notified when things go wrong 🚨

---

## 🛠️ Tools Used

| Tool        | Purpose                                |
|-------------|----------------------------------------|
| Zabbix      | Full-stack monitoring (hosts, services)|
| Windows Server | Agent-based monitoring target       |
| Ubuntu      | Zabbix server + Linux host             |
| PostgreSQL  | Zabbix backend database                |
| Email (SMTP) | Notification channel for triggers     |
| ping, netstat, ss, nmap | Network monitoring & checks |

---

## 🔍 What is System Monitoring?

System monitoring is the process of continuously observing the health and performance of a system (CPU, RAM, disk, processes). It allows you to detect issues like:
- High CPU usage
- Low disk space
- Failed services
- Unexpected shutdowns

---

## 🌐 What is Network Monitoring?

Network monitoring involves observing traffic, connectivity, and availability of devices on the network. With network monitoring, you can:
- Detect downtime of critical servers
- Monitor port status (SSH, RDP, HTTP, etc.)
- Analyze traffic or detect unauthorized access
- Track bandwidth usage and latency

---

## ⚙️ Key Setup Steps

### 🧠 Zabbix Server Installation (Ubuntu 24.04)

Installed Zabbix 7.2 with PostgreSQL and Apache on a virtual Ubuntu machine. This server handles data collection and alerting.

### 🖥️ Zabbix Agent on Windows

Installed the Zabbix Agent on a Windows Server 2022 host and connected it to the Zabbix Server. This allowed me to monitor:
- CPU/Memory/Disk usage
- Windows services (e.g., W32Time, DNS)
- Event logs for warnings/errors

### 🔌 Network Monitoring from Linux

Using tools like:
```bash
ping <host>
netstat -tulnp
ss -an
nmap -sP 192.168.1.0/24
```

I could detect open ports, unreachable hosts, and network health.

---

## 📈 Monitoring Features Configured

* ✅ Host discovery
* ✅ Service state checks
* ✅ Email alerts via SMTP
* ✅ Dashboard widgets and graphs
* ✅ Trigger thresholds (e.g., Disk < 10%)

---

## 📧 Email Alert Setup

Zabbix was configured with Gmail’s SMTP to send alerts to my inbox when:

* A host becomes unavailable
* A monitored service stops
* Disk space becomes critically low

---

## 📚 Learning Outcomes

* Learned the difference between **active** and **passive** monitoring
* Understood how to configure Zabbix hosts, items, triggers, and actions
* Practiced analyzing logs for root cause detection
* Understood basic network scanning and port monitoring

---

## 📎 Future Work

* Add SNMP monitoring for network switches/routers
* Integrate Slack or Telegram for alert delivery
* Create automated reports (daily/weekly)
* Explore Prometheus + Grafana for time-series analysis

---

> ✅ This project gave me hands-on experience in building a monitoring solution from scratch. It’s foundational for careers in **DevOps**, **SysAdmin**, or **IT Support**.

```
