# **SharePoint & OneDrive Administration**  

This document contains my experience managing SharePoint sites and OneDrive storage in Microsoft 365.  

## **📁 Managing SharePoint Sites**  
To create a SharePoint site:  
1. Go to **Microsoft 365 Admin Center** → SharePoint.  
2. Click **Create Site** and choose **Team Site** or **Communication Site**.  
3. Assign site owners and configure permissions.  

### **📌 PowerShell Commands**  
Create a new SharePoint site:  
```powershell
New-SPOSite -Url "https://contoso.sharepoint.com/sites/NewSite" -Owner user@domain.com -StorageQuota 1024
```
List all SharePoint sites:
```
Get-SPOSite
```

Manage OneDrive storage:
```
Set-SPOSite -Identity "https://contoso-my.sharepoint.com/personal/user" -StorageQuota 5000

```

✅ Key Takeaways:
✔ Created SharePoint sites and configured document libraries.
✔ Managed permissions for team collaboration.
✔ Optimized OneDrive storage limits.
