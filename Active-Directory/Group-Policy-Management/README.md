# 🎯 Group Policy Object (GPO) Management in Active Directory

## 📌 Introduction

Hi there! I'm Emmanuel Stefan, and in my Active Directory (AD) journey, mastering Group Policy Objects (GPOs) has been a key part of my learning and practical implementation. GPOs are powerful tools that allow me to configure and enforce security settings, manage users and computers, and automate administrative tasks across a network. 🌐

This document captures how I set up, manage, and implement GPOs in my home lab environment for my IT portfolio. 🚀

---

## 🛠️ GPO Creation Steps

Here’s how I personally create a GPO from scratch:

1. **Open Group Policy Management Console (GPMC)** 📂  
   Launch GPMC on the Domain Controller (`gpmc.msc`).

2. **Create a New GPO** ✨  
   Right-click domain or OU → "Create a GPO in this domain, and Link it here."

3. **Name the GPO** 📝  
   Use meaningful names like `Workstation Security Policy`, `Password Policy Enforcement`, or `Software Deployment Policy`.

4. **Edit the GPO** 🎨  
   Open Group Policy Management Editor → configure settings under **Computer Configuration** or **User Configuration**.

5. **Apply GPO to Targeted OUs** 🎯  
   Link GPOs carefully to the correct OUs.

6. **Force Update GPOs** 🔄  
   Run `gpupdate /force` on client machines to apply changes immediately.

---

## 🔐 Example GPO Configurations I Set Up

| GPO Name                 | Purpose                                | Key Settings                                      |
|---------------------------|----------------------------------------|---------------------------------------------------|
| Password Policy           | Enforce strong passwords              | Minimum length, complexity, expiration           |
| Lock Screen Policy        | Increase security on idle devices     | Auto-lock after 10 minutes of inactivity          |
| Software Installation     | Automate software deployment          | Assigned software via MSI packages               |
| Windows Update Policy     | Control updates in my network         | Automatic download and scheduled install         |
| Restrict USB Storage      | Block unauthorized USB devices        | Device Installation Restrictions                 |

---

## 🧹 Best Practices I Follow

- Always **test** a new GPO in a small OU before wide deployment 🧪.
- Use **descriptive naming** for GPOs to avoid confusion later 🔖.
- Document every GPO created (purpose, settings, target OU) 📚.
- Minimize the number of GPO links per OU to keep things efficient ⚡.
- Regularly **review and clean up** unused or conflicting GPOs 🧹.

---

## 🚀 My GPO Management Tools

- **Group Policy Management Console (GPMC)** 🖥️
- **gpresult /h report.html** 📋
- **PowerShell** 🧰
- **Event Viewer** 🛠️

---

## 📚 Lessons Learned

Implementing GPOs in my home lab taught me the importance of **planning** before deployment and **testing carefully** to avoid accidental network-wide misconfigurations. Mistakes taught me to always back up GPOs and document every change! 📖

---

## 🌟 Conclusion

Working with GPOs has strengthened my skills in network administration and cybersecurity. 🔒  
I look forward to continuously improving my Group Policy management skills as I grow in my IT career! 🚀

> *"Properly planned policies prevent poor performance!"* ✨

