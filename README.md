<strong>DellLatitude 7400 Hackintosh OpenCore EFI</strong></br></br>

Before boot to Install macOS, update your Bios to version 1.38.0 and Thunderbolt Firmware for activated Thunderbolt on Windows and mod UEFI variable with modGRUBShell.efi (on OpenCore picker press spacebar, choose modGRUBShell.efi and press enter/return)<br>

| WiFi Installed                       | Command             | Warning |
|:-------------------------------------|:--------------------|:--------------------|
|Intel WiFi |- rename config-Intel WiFi.plist to config.plist|- Disable SecureBootModel on Misc on Sonoma/Sequoia<br>- Rename #IOName to IOName at PciRoot(0x0)/Pci(0x1D,0x2)/Pci(0x0,0x0) Device Properties on Sequoia<br>- Root Patch with OCLP if installed Sequoia|
|Broadcom BCM94360CS2/BCM943602CS |- rename config-Broadcom WiFi.plist to config.plist|- Root Patch with OCLP if Installed Sonoma/Sequoia|

<br>

| Setting                        | Command             |
|:-------------------------------|:--------------------|
| DVMT Pre-Allocated 64M         | setup_var 0xA10 0x2 |
| DVMT Total Gfx Mem MAX         | setup_var 0xA11 0x3 |
| Disable CFG Lock               | setup_var 0x6ED 0x0 |
| Enable Overclocking Feature    | setup_var 0x855 0x1 |
| Disable Overclocking Lock      | setup_var 0x789 0x0 |
| Enable Voltage Optimization    | setup_var 0x878 0x1 |
| Native BIOS Enumeration Mode   | setup_var 0x158C 0x1|
| DisableThunderbolt Auto Switch | setup_var 0x158B 0x0|
| Enable Thunderbolt Usb Support | setup_var 0x4ED 0x1 |
| DIMM profile                   | setup_var 0xA4F<br>- Default 0x00<br>- XMP Profile 1 0x2<br>- XMP Profile 2 0x3|

After success mod UEFI var uncheck AppleXcpmCfgLock Quick Kernel and remove framebuffer-fbmem and framebuffer-stolenmem IGPU Device Properties

Voltage Shift</br>
cd /*Path to Folder VoltageShift*/</br>
sudo chown -R root:wheel VoltageShift.kext</br>
./voltageshift offset -110 0 -110</br>
sudo ./voltageshift buildlaunchd -110 0 -110 0 0 0 1 0 1 22 51 1 30 (Turbo Enable)</br>
sudo ./voltageshift buildlaunchd -110 0 -110 0 0 0 0 0 1 22 51 1 30 (Turbo Disable)</br>
</br>
Remove VoltageShift Launchd</br>
cd /*Path to Folder VoltageShift*/</br>
./voltageshift removelaunchd</br>
</br>
Install ALC295PlugFix for Fix Jack </br>
cd /*Path to Folder ALC295PlugFix*/</br>
sudo ./install.sh</br>
</br>
<details>  
<summary><strong>Overview</strong></summary>
</br>
- Use Latest Bios 1.38.0</br>
- Improve Backlight Smoother</br>
- Latest OpenCore 1.0.5</br>
- Support macOS Ventura 13.x for Sequoia 14.x</br>
- if use default Intel WiFi card use AirPortIwlm kext</br>
- if use Broadcom BCM94360CS2 plug n play on Ventura 13.x and Sonoma 14.x to Sequoia 15.x Just Root Patch With OpenCore Legacy Patcher

</details>

<details>  
<summary><strong>My Hardware</strong></summary>
</br>

| Model              | Dell Latitude 7400                                                |
|:-------------------|:------------------------------------------------------------------|
| Processor          | Intel® Core™ i7-8665U                                             |
| Graphics           | Intel® UHD Graphics 620                                           |
| Memory             | 32GB (2x16GB 2666MHz DDR4 Corsair Vengeance)                      |
| Display            | 14" FHD 1920x1080 LCD                                             |
| Slot PCIE x4 NVME  | WD SN740 500GB NVMe 2280 (macOS)                                  |
| Slot PCIE x2 WWAN  | WDC SN 520 250GB NVMe 2242 (Windows 10)                           |
| WLAN + Bluetooth   | Broadcom BCM94360CS2 (Replaced from Intel 9560 WiFi Card)         |
| Card Reader        | Realtek RTS525A PCIE Card Reader                                  |
| Camera             | HD Webcam                                                         |
| Soundcard          | Realtek ALC295                                                    |
| Trackpad           | Dell I2C Touchpad                                                 |
| Thunderbolt        | Intel JHL6340 Alpine Ridge Thunderbolt 3                          |


</details>
<details>  
<summary><strong>What's working</strong></summary>
</br>

- [x] Intel UHD 620 Graphics
- [x] All USB ports
- [x] Thunderbolt Ports
- [x] Internal Camera
- [x] WiFi+Bluetooth (Airdrop, Handoff and Continuity Broadcom Cards Only)
- [x] Shutdown/ Reboot/ Sleep/ Wake 
- [x] Speakers and Headphones Jack (Use ALCPlugFix)
- [x] App Store
- [x] iMessage and Facetime 
- [x] HDMI Output + Audio
- [x] Keyboard and Trackpad (multi gesture trackpad)
- [x] VT-D enable on bios with uncheck disableiomapper kernel quirk
- [x] Undervolting with Voltageshift to decrease temp
      
</details>

<details>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.11.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.32.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.37.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.43.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.46.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.56.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.00.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.04.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.15.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.29.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.33.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.52.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.55.png?raw=true"/></br>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.30.22.png?raw=true"/>
</details>
