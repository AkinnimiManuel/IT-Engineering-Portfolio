# **User & License Management in Microsoft 365**  

This document contains the steps and PowerShell commands I used to manage users and licenses in Microsoft 365.  

## **👤 Creating Users**  
To create a new user from the Microsoft 365 Admin Center:  
1. Navigate to **Admin Center** → Users → Active Users.  
2. Click **Add a user**.  
3. Fill in the details and assign a license.  

### **📌 PowerShell Commands**  
Create a new user:  
```powershell
New-MsolUser -UserPrincipalName user@domain.com -DisplayName "New User" -LicenseAssignment "contoso:ENTERPRISEPACK"
```

List all users:
```
Get-MsolUser
```
Remove a user:
```
Remove-MsolUser -UserPrincipalName user@domain.com
```
🔑 Assigning & Managing Licenses
Assign a license:
```
Set-MsolUserLicense -UserPrincipalName user@domain.com -AddLicenses "contoso:ENTERPRISEPACK"
```
Remove a license:
```
Set-MsolUserLicense -UserPrincipalName user@domain.com -RemoveLicenses "contoso:ENTERPRISEPACK"
```

✅ Key Takeaways:
✔ Successfully created, deleted, and managed users in Microsoft 365.
✔ Assigned and removed licenses using PowerShell.
✔ Managed security groups and distribution lists.
