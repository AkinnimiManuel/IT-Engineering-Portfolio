# 👥 Bulk User Account Creation with PowerShell in Active Directory 🖥️

Hey! I'm Emmanuel Stefan 👋 — and this project is part of my Active Directory automation practice using **PowerShell**.  

In this script, I automate the **creation of multiple user accounts** in a Windows Server Active Directory environment.  
This is super useful for onboarding employees or students in bulk without doing it manually in ADUC. 🔄📋

---

## 🧰 What You’ll Need

- ✅ A Windows Server with **Active Directory Domain Services** installed
- ✅ **PowerShell** with AD module (`Import-Module ActiveDirectory`)
- ✅ A **CSV file** with user data
- ✅ Appropriate permissions to create users in AD

---

## 📄 CSV Format (users.csv)

Your CSV should look like this:

```csv
FirstName,LastName,Username,Password,OU
John,Doe,jdoe,Pa$$w0rd123,OU=Staff,DC=yourdomain,DC=com
Jane,Smith,jsmith,Pa$$w0rd456,OU=Teachers,DC=yourdomain,DC=com
```

> 📝 Make sure to save the file as UTF-8 and adjust the OU path based on your domain.

---

## 💻 PowerShell Script

```powershell
# Import Active Directory module
Import-Module ActiveDirectory

# Path to CSV
$UserList = Import-Csv -Path "C:\Scripts\users.csv"

foreach ($User in $UserList) {
    $FullName = "$($User.FirstName) $($User.LastName)"
    $UserPrincipalName = "$($User.Username)@yourdomain.com"
    
    New-ADUser `
        -Name $FullName `
        -GivenName $User.FirstName `
        -Surname $User.LastName `
        -SamAccountName $User.Username `
        -UserPrincipalName $UserPrincipalName `
        -AccountPassword (ConvertTo-SecureString $User.Password -AsPlainText -Force) `
        -Path $User.OU `
        -Enabled $true `
        -ChangePasswordAtLogon $true

    Write-Host "✅ Created: $FullName"
}
```

---

## 🚀 Running the Script

1. Open **PowerShell as Administrator**
2. Run:

```powershell
Set-ExecutionPolicy RemoteSigned
.\bulk-user-creation.ps1
```

3. Watch the magic happen! 🎩✨

---

## 📁 Files Included

* `bulk-user-creation.ps1` – PowerShell script
* `users.csv` – Sample CSV file
* `README.md` – You’re reading it 😉

---

## 🔐 Security Tip

Avoid hardcoding passwords in production.
Instead, consider using secure vaults or prompting for passwords interactively 🔒

---

## 🔄 What I Learned

* Automating repetitive AD tasks saves massive time ⏱️
* CSV parsing and scripting logic with loops in PowerShell
* Understanding AD user properties and OU structure
* How to prevent human error in bulk account creation

