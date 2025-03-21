# **Peripheral & Driver Troubleshooting**  

This folder contains solutions for resolving driver issues and problems with peripherals like keyboards, mice, printers, and external devices.  

## **🛠 Common Issues & Fixes**  

### 🎧 **USB Device Not Recognized**  
- Try a different USB port.  
- Uninstall and reinstall the driver:  
  - Open **Device Manager** → Locate the USB device → Right-click **Uninstall** → Restart PC.  

### 🎤 **Audio or Microphone Not Working**  
- Set the correct **input/output device** in **Sound Settings**.  
- Update or reinstall audio drivers from **Device Manager**.  

### 🖨 **Printer Not Responding**  
- Ensure the printer is properly connected and turned on.  
- Restart the **Print Spooler** service:  
  ```powershell
  net stop spooler
  net start spooler
  ```

  Reinstall the printer driver.
✅ Key Takeaways:
✔ Fix unresponsive USB devices and audio issues.
✔ Install missing drivers and update outdated ones.
✔ Resolve printer connection and printing failures.
