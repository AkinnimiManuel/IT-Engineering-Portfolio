# **Microsoft Teams Administration**  

This document outlines my work managing Microsoft Teams for collaboration and meetings.  

## **👥 Managing Teams & Channels**  
To create a new Team in Microsoft Teams Admin Center:  
1. Navigate to **Teams Admin Center** → Teams.  
2. Click **Create a Team** and enter team details.  
3. Assign owners and add members.  

### **📌 PowerShell Commands**  
List all Teams in an organization:  
```powershell
Get-Team
```
Create a new Team:
```
New-Team -DisplayName "Project Team" -Description "Team for Project X"
```

Add a user to a Team:
```
Add-TeamUser -GroupId team-id -User user@domain.com
```


✅ Key Takeaways:
✔ Created Teams and managed collaboration settings.
✔ Configured messaging policies and guest access.
✔ Automated Teams administration using PowerShell.
