# **Microsoft 365 Administration – Learning Journey**  

_A personal documentation of my hands-on experience with Microsoft 365 Administration._  

## **📌 About This Repository**  
This repository contains my practical learning experience with **Microsoft 365 Administration**. It includes tasks I performed, scripts I used, troubleshooting steps, and security best practices I implemented.  

Through this journey, I gained hands-on experience with:  
✅ **User and License Management**  
✅ **Microsoft Teams and SharePoint Administration**  
✅ **Exchange Online Management**  
✅ **Security and Compliance Configurations**  
✅ **PowerShell Automation for Microsoft 365**  

## **🛠 Hands-On Tasks & Implementation**  

### **1️⃣ User and License Management**  
📌 Created and managed users in Microsoft 365 Admin Center  
📌 Assigned and revoked licenses for users  
📌 Automated user creation using PowerShell  
🔹 **PowerShell Script Used:**  
```powershell
Connect-MsolService
New-MsolUser -UserPrincipalName "user@example.com" -DisplayName "New User" -LicenseAssignment "tenant:O365_BUSINESS_PREMIUM"
```

---

### **2️⃣ Microsoft Teams Administration**  
📌 Created and managed Teams and Channels  
📌 Configured messaging policies and guest access  
📌 Set up retention policies for compliance  

---

### **3️⃣ Exchange Online Management**  
📌 Created mailboxes and configured email forwarding  
📌 Set up mailbox permissions (Send As, Send on Behalf)  
📌 Implemented email filtering and anti-phishing policies  
🔹 **PowerShell Script Used to Set Email Forwarding:**  
```powershell
Set-Mailbox -Identity "user@example.com" -ForwardingSMTPAddress "anotheruser@example.com"
```

---

### **4️⃣ Security & Compliance Management**  
📌 Enabled **Multi-Factor Authentication (MFA)** for all users  
📌 Configured **Conditional Access Policies** in Azure AD  
📌 Set up **email spam filtering and Safe Links**  
📌 Managed SharePoint and OneDrive security settings  

---

### **5️⃣ PowerShell Automation in Microsoft 365**  
📌 Automated bulk user creation  
📌 Managed licenses using PowerShell  
📌 Generated user login activity reports  

🔹 **PowerShell Script to Monitor User Logins:**  
```powershell
Connect-AzureAD
Get-AzureADAuditSignInLogs | Select-Object UserDisplayName, AppDisplayName, SignInDateTime
```

---

## **🏠 Home Lab Setup**  
To solidify my learning, I set up a Microsoft 365 practice environment:  
✔ **Created a Microsoft 365 Developer Tenant**  
✔ **Integrated Microsoft 365 with Azure AD**  
✔ **Configured security policies and access controls**  
✔ **Tested automation scripts for real-world scenarios**  

## **📌 Key Takeaways from My Learning Experience**  
✅ **Gained practical experience in managing Microsoft 365 services**  
✅ **Developed PowerShell automation skills for administration tasks**  
✅ **Learned security best practices for Microsoft 365 environments**  


## **📩 Contact**  
If you’d like to discuss my experience or projects, feel free to reach out:  
📧 Email: your.email@example.com  
💼 LinkedIn: [Your LinkedIn Profile](https://linkedin.com/in/yourprofile)  
