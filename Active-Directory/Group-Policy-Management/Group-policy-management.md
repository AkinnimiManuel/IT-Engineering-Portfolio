# 🛠️ GPO Projects

## A. Enforce Password Policy and lockout policy 🔐

**Steps I took:**

1. I opened **GPMC** → Create GPO → Name: `Password Enforcement Policy`.
![Create GPO](images/01-New-GPO.png)
2. Edit GPO:  
   `Computer Configuration → Policies → Windows Settings → Security Settings → Account Policies → Password Policy`.
![Edit policy](images/02-password-policies.png)
3. Configure password rules (length, complexity, expiration) and also the lockout policy (invalid lockout attempts)
![edit policy ](images/03-lockout-policy.png)
4. Run `gpupdate /force` and test.
![GP update](images/04-force-GPO.png)
5. After forcing GPO update, the user account connected to the domain was still not locking out after 3 invalid attempts. So i troubleshoot with 

`rsop.msc`

![RSOP policy troubleshooting](images/05-rsop-msc.png)

6. Checked the precedence of the GPOs and found out the dafault domain policy already has a password lockout defined and was applied first to the user

![Check the precedence](images/06-precedence.png)

7. I went back to the GPMC and un-checked the define this policy for the default domain policy
![Un-checked policy](images/07-un-define-policy.png)

8. My GPO now appying to the users in the domain
![GPO applied](images/08-gpo-working.png)

### Testing the Password GPO policy

9. Logged into the user pc (windows 10 client VM) on my virtual lab and intentionally typed the worng password 3 times and the account was locked😁✅
![account locked](images/09-testing-GPO.png)

10. I went back to the ADUC to unlock the accoount.
![unlock account](images/10-unlock-account.png)

---

## B. Disable USB Storage Access 🔌🚫

**Steps I took:**

1. Create GPO: `Block USB Storage`.
![create GPO](images/11-Block-usb-storage.png)

2. Edit GPO:  
   `Computer Configuration → Policies → Administrative Templates → System → Removable Storage Access`.
![Removable access media](images/12-removable-storage.png)
3. Enable "Deny all access."
![Enable deny access](images/13-enable-deny-access.png)
4. Force update
![force update](images/14-force-update.png)
5. Insert USB and verify it gets blocked.
![block removable media](images/15-block-removable-media.png)


---

## C. Automatically Install Software (Chrome Deployment) 🖥️

**Steps I took:**

1. Created a folder called Chrome deployment and Host `.msi` file on network share.
![chrome msi file](images/16-chrome-msi-file.png)
![create share](images/17-create-share.png)
2. Create GPO: `Chrome Deployment Policy`.
![create GPO](images/18-link-GPO.png)
3. Edit GPO:  
   `Computer Configuration → Policies → Software Settings → Software Installation`.
4. Add MSI package from shared path.
![Add package](images/19-select-the-package.png)
![Assign package](images/20-assign-package.png)
![chrome assigned](images/21-chrome-assigned.png)

5. Ran "Gpupdate / force" 
![Force Gpupdate](images/22-gp-update.png)
6. Restart PC
![Restart PC](images/23-restart-PC.png)
7. Chrome installed automatically on Domain PC
![chrome installed](images/24-chrome-installed.png)
8. Force GPupdate again
![Force update again](images/25-force-update-again.png)

---

## D. Configure Automatic Windows Updates ⚙️

**Steps:**

1. Create GPO: `Windows Update Policy`.
2. Edit GPO:  
   `Computer Configuration → Policies → Administrative Templates → Windows Components → Windows Update`.
3. Configure Automatic Updates policy.
4. Link to device OU.
5. Check client update settings.

---

## E. Display Legal Notice Before Login 📜

**Steps:**

1. Create GPO: `Login Legal Notice`.
2. Edit GPO:  
   `Computer Configuration → Policies → Windows Settings → Security Settings → Local Policies → Security Options`.
3. Set "Interactive logon: Message title" and "Message text."
4. Link to domain.
5. Test login process to verify.

---

## F. Redirect Documents Folder to Network Share 📂

**Steps:**

1. Set up a shared folder (e.g., `\\server\DocumentsRedirect`).
2. Create GPO: `Documents Redirection`.
3. Edit GPO:  
   `User Configuration → Policies → Windows Settings → Folder Redirection → Documents`.
4. Set Basic redirection to shared folder.
5. Test file creation and redirection.

---

## G. Prevent Access to Control Panel and Settings 🛑

**Steps:**

1. Create GPO: `Disable Control Panel`.
2. Edit GPO:  
   `User Configuration → Policies → Administrative Templates → Control Panel`.
3. Enable "Prohibit access to Control Panel and PC settings."
4. Link GPO to user OU.
5. Verify restriction.

---

## H. Desktop Wallpaper Enforcement 🎨

**Steps:**

1. Share a wallpaper image.
2. Create GPO: `Set Desktop Wallpaper`.
3. Edit GPO:  
   `User Configuration → Policies → Administrative Templates → Desktop → Desktop`.
4. Configure wallpaper path and style (Fill, Center, etc.).
5. Apply and verify on user desktops.

---

## I. Set Screen Saver Lock After Inactivity 💤🔒

**Steps:**

1. Create GPO: `Screen Saver Timeout`.
2. Edit GPO:  
   `User Configuration → Policies → Administrative Templates → Control Panel → Personalization`.
3. Enable screen saver, set timeout, password protect.
4. Link to user OU.
5. Test idle lockout behavior.

---

# 📈 Final Notes

By carrying out these GPO projects, I’ve gained solid hands-on experience configuring and securing an Active Directory environment. 📚✨  
I continue expanding my lab environment with more real-world scenarios to sharpen my system administration skills! 🚀

