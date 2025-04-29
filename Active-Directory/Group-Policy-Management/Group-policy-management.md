# 🛠️ GPO Projects

## 1. Enforce Password Policy 🔐

**Steps:**

1. Open **GPMC** → Create GPO → Name: `Password Enforcement Policy`.
2. Edit GPO:  
   `Computer Configuration → Policies → Windows Settings → Security Settings → Account Policies → Password Policy`.
3. Configure password rules (length, complexity, expiration).
4. Link GPO to domain.
5. Run `gpupdate /force` and test.

---

## 2. Disable USB Storage Access 🔌🚫

**Steps:**

1. Create GPO: `Block USB Storage`.
2. Edit GPO:  
   `Computer Configuration → Policies → Administrative Templates → System → Removable Storage Access`.
3. Enable "Deny all access."
4. Link to target OU.
5. Insert USB and verify it gets blocked.

---

## 3. Automatically Install Software (Chrome Deployment) 🖥️

**Steps:**

1. Host `.msi` file on network share.
2. Create GPO: `Chrome Deployment Policy`.
3. Edit GPO:  
   `Computer Configuration → Policies → Software Settings → Software Installation`.
4. Add MSI package from shared path.
5. Link GPO to target OU → Restart client machine → Chrome installs.

---

## 4. Configure Automatic Windows Updates ⚙️

**Steps:**

1. Create GPO: `Windows Update Policy`.
2. Edit GPO:  
   `Computer Configuration → Policies → Administrative Templates → Windows Components → Windows Update`.
3. Configure Automatic Updates policy.
4. Link to device OU.
5. Check client update settings.

---

## 5. Enforce Account Lockout Policy 🚪🔒

**Steps:**

1. Create GPO: `Account Lockout Policy`.
2. Edit GPO:  
   `Computer Configuration → Policies → Windows Settings → Security Settings → Account Lockout Policy`.
3. Set lockout threshold, lockout duration, reset time.
4. Link to domain.
5. Test with wrong password attempts.

---

## 6. Display Legal Notice Before Login 📜

**Steps:**

1. Create GPO: `Login Legal Notice`.
2. Edit GPO:  
   `Computer Configuration → Policies → Windows Settings → Security Settings → Local Policies → Security Options`.
3. Set "Interactive logon: Message title" and "Message text."
4. Link to domain.
5. Test login process to verify.

---

## 7. Redirect Documents Folder to Network Share 📂

**Steps:**

1. Set up a shared folder (e.g., `\\server\DocumentsRedirect`).
2. Create GPO: `Documents Redirection`.
3. Edit GPO:  
   `User Configuration → Policies → Windows Settings → Folder Redirection → Documents`.
4. Set Basic redirection to shared folder.
5. Test file creation and redirection.

---

## 8. Prevent Access to Control Panel and Settings 🛑

**Steps:**

1. Create GPO: `Disable Control Panel`.
2. Edit GPO:  
   `User Configuration → Policies → Administrative Templates → Control Panel`.
3. Enable "Prohibit access to Control Panel and PC settings."
4. Link GPO to user OU.
5. Verify restriction.

---

## 9. Desktop Wallpaper Enforcement 🎨

**Steps:**

1. Share a wallpaper image.
2. Create GPO: `Set Desktop Wallpaper`.
3. Edit GPO:  
   `User Configuration → Policies → Administrative Templates → Desktop → Desktop`.
4. Configure wallpaper path and style (Fill, Center, etc.).
5. Apply and verify on user desktops.

---

## 10. Set Screen Saver Lock After Inactivity 💤🔒

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

