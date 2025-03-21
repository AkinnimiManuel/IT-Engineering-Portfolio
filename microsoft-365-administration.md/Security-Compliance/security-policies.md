# **Microsoft 365 Security & Compliance Policies**  

This document covers my work securing Microsoft 365 using security policies and compliance tools.  

## **🔐 Enabling Multi-Factor Authentication (MFA)**  
To enable MFA for users:  
1. Navigate to **Microsoft 365 Admin Center** → Security → MFA.  
2. Select a user and enable MFA.  
3. Configure authentication methods (e.g., SMS, Authenticator app).  

### **📌 PowerShell Commands**  
Check MFA status for all users:  
```powershell
Get-MsolUser -All | Select DisplayName,UserPrincipalName,StrongAuthenticationMethods
```
⚠ Configuring Conditional Access Policies
To create a Conditional Access policy blocking legacy authentication:

Go to Azure Active Directory → Security → Conditional Access.
Click New Policy and configure conditions.
Apply policy to users or groups.

📌 PowerShell Commands
```
New-AzureADMSConditionalAccessPolicy -DisplayName "Block Legacy Auth" -State Enabled -Conditions @{UserRiskLevels="High"}
```
🔎 Monitoring Security Logs
Check security logs using Microsoft Defender:
```
Get-MessageTrace -StartDate (Get-Date).AddDays(-7) -EndDate (Get-Date)
```

✅ Key Takeaways:
✔ Configured MFA and Conditional Access for security.
✔ Implemented email security policies.
✔ Monitored and analyzed security reports in Microsoft Defender.
