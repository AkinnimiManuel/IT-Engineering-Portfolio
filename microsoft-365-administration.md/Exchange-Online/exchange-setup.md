# **Exchange Online & Email Configuration**  

This document covers my experience setting up and managing Exchange Online for email communication.  

## **📨 Creating & Managing Mailboxes**  
To create a shared mailbox in the Exchange Admin Center:  
1. Go to **Exchange Admin Center** → Recipients → Shared.  
2. Click **Add a shared mailbox**, enter the mailbox name and address.  
3. Assign members who can send/receive emails.  

### **📌 PowerShell Commands**  
Create a shared mailbox:  
```powershell
New-Mailbox -Shared -Name "Support" -PrimarySmtpAddress support@domain.com

List all mailboxes:

powershell
Copy
Edit
Get-Mailbox
Enable mail forwarding:

powershell
Copy
Edit
Set-Mailbox -Identity user@domain.com -ForwardingAddress forward@domain.com -DeliverToMailboxAndForward $true

```


✅ Key Takeaways:
✔ Configured and managed Exchange Online mailboxes.
✔ Set up mail flow rules and spam filtering.
✔ Enabled email forwarding and shared mailboxes.
