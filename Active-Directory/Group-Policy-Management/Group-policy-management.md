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
![Create windows os GPO](images/26-create-windwos-update.png)
2. Edit GPO:  
   `Computer Configuration → Policies → Administrative Templates → Windows Components → Windows Update`.
![windows update](images/27-configure-windows-updates.png)
3. Configure Automatic Updates policy.
![configure settings](images/28-configure-settings.png)

4. Force GPO.
![force GPO](images/29-force-GPO.png)
5. Check client update settings.
![Check client VM](images/30-auto-downlaod.png)

---

## E. Display Legal Notice Before Login 📜

**Steps:**

1. Create GPO: `Login Legal Notice`.
![create GPO](images/31-create-GPO.png)
2. Edit GPO:  
   `Computer Configuration → Policies → Windows Settings → Security Settings → Local Policies → Security Options`.
3. Set "Interactive logon: Message title" and "Message text."
![interactive message title](images/32-interactive-logon-title.png)
![interactive message text](images/33-login-message.png)
4. Test login process to verify.
![test login message](images/33a-login-notice-active.png)

---

## F. Prevent Access to Control Panel and Settings 🛑

**Steps:**

1. Create GPO: `Disable Control Panel` and linked to user's OU.
![create GPO](images/34-disabl-CP.png)
2. Edit GPO:  
   `User Configuration → Policies → Administrative Templates → Control Panel`.
![Edit GPO](images/35-edit-GPO.png)
3. Enable "Prohibit access to Control Panel and PC settings."
![Enable GPO](images/36-enable-GPO.png)
4. Verify restriction.
![test GPO](images/37-test-GPO.png)

---

## G. Desktop Wallpaper Enforcement 🎨

**Steps:**

1. Share a wallpaper image.
![share folder](images/38-create-wallpaper-folder.png)
2. Create GPO: `Set Desktop Wallpaper`.
![create GPO](images/39-create-wallpaper-GPO.png)
3. Edit GPO:  
   `User Configuration → Policies → Administrative Templates → Desktop → Desktop`.
![Edit wallaper GPO](images/40-desktop-settings.png)
4. Configure wallpaper path and style (Fill, Center, etc.).
![Wallaper settings](images/41-name-the-wallpaper.png)
5. Apply and verify on user desktops.
![test GPO](images/42-wallaper-set.png)

---

# 📈 Final Notes

By carrying out these GPO projects, I’ve gained solid hands-on experience configuring and securing an Active Directory environment. 📚✨  
I continue expanding my lab environment with more real-world scenarios to sharpen my system administration skills! 🚀
