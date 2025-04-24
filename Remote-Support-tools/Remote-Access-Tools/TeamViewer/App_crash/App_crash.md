# 🛠️ Application Crash: Google Chrome

## 🧑‍💻 Technician: Emmanuel Stefan  
**Date:** [24-04-2025]  
**Tool Used:** TeamViewer  
**Issue Type:** Remote Application Troubleshooting  
**Affected Machine:** Client VM (Windows 10)

---

## 🧵 Scenario Description

Today, I simulated an application crash involving Google Chrome on the client VM. The goal was to handle a typical support ticket scenario where a user complains that Chrome fails to open or crashes immediately after launching.

---

## 🎯 Reported Issue (Simulated)

> "Each time I try to open Chrome, it crashes without loading any page. I’ve tried restarting the computer but nothing changed."

---

## 🔍 Diagnosis

Upon connecting to the VM via TeamViewer, I observed the following:

- Chrome would open briefly and close instantly without any error message.
- Task Manager showed Chrome starting and terminating within a few seconds.
- Event Viewer logs showed `Faulting module name: ntdll.dll` which is often linked to system file issues or incompatible software.

I suspected a corrupted user profile or missing/corrupt Chrome files.

---

## 🧰 Troubleshooting Steps

1. **Verified if Chrome was up-to-date**  
   - Couldn’t verify since it crashed before loading.

2. **Launched Chrome in Incognito / Safe Mode**  
   - Tried launching Chrome with `--incognito` and `--disable-extensions` flags.
   - Same crash behavior occurred.

3. **Checked for malware / third-party interference**  
   - Scanned using Windows Defender — no threats found.

4. **Reset Chrome settings**  
   - Unable to access due to crashing.

5. **Uninstalled and Reinstalled Chrome**  
   - Fully uninstalled Chrome from Control Panel.
   - Deleted leftover Chrome user data from:
     ```
     C:\Users\<username>\AppData\Local\Google\Chrome
     ```
   - Reinstalled latest Chrome version from official site.

6. **Post-installation Test**  
   - Chrome opened normally.
   - Confirmed stability by browsing multiple tabs and streaming a video.

---

## ✅ Resolution

Reinstallation of Chrome and clearing residual user data resolved the issue. I suspect a corrupt user profile or extension conflict caused the crashes. No further issues after fresh install.

---

## 🖼️ Evidence

- Screenshots before and after resolution are saved in the `Screenshots/` folder.
- Recorded video session of the troubleshooting is included in `Video.mp4`.

---

## 🧠 What I Learned

- Chrome crashes can often be fixed by removing corrupt profile data.
- It’s important to try safe modes or command line flags first before reinstalling.
- Remote troubleshooting over TeamViewer is efficient when screen sharing and clipboard access are enabled.

---

## 📌 Notes

- Client VM should be monitored for any recurring app instability.
- Next time, I may try creating a new user profile before full reinstall to save time.


