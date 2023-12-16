<strong>DELL VOSTRO 3490 Hackintosh OpenCore EFI</strong></br></br>

Mod Hidden Bios Setting with modGRUBShell.efi (on OpenCore picker press spacebar, choose modGRUBShell.efi and press enter/return)
| Setting                        | Command             |
|:-------------------------------|:--------------------|
| DVMT Pre-Allocated 64M         | setup_var 0xA10 0x2 |
| DVMT Total Gfx Mem MAX         | setup_var 0xA11 0x3 |
| Disable CFG Lock               | setup_var 0x6ED 0x0 |
| Disable Overclocking Lock      | setup_var 0x789 0x0 |

<details>  
<summary><strong>Overview</strong></summary>
</br>
- Use Latest Bios 1.28.0</br>
- Improve Backlight Smoother</br>
- Latest OpenCore 0.9.8</br>
- Support macOS Ventura 13.x - Sonoma 14.x</br>

</details>

<details>  
<summary><strong>My Hardware</strong></summary>
</br>

| Model              | Dell Latitude 7400                                                |
|:-------------------|:------------------------------------------------------------------|
| Processor          | Intel Core i7-8665U                                               |
| Graphics           | Intel UHD Graphics 620                                            |
| Memory             | 16GB (2x8GB 2666MHz DDR4 Corsair Vengeance)                       |
| Display            | 14" FHD 1920x1080 LCD                                             |
| Storage NVME       | ADATA XPG SX 8200 Pro (SetApfsTrimTimeout=0 Because NAND Problem) |
| WLAN + Bluetooth   | Intel Wireless AC 9560                                            |
| Card Reader        | Realtek RTS525A PCIE Card Reader                                  |
| Camera             | HD Webcam                                                         |
| Soundcard          | Realtek ALC295                                                    |
| Trackpad           | Dell I2C Touchpad                                                 |


</details>
<details>  
<summary><strong>What's working</strong></summary>
</br>

- [x] Intel UHD 620 Graphics
- [x] All USB ports (Included USB-CRW)
- [x] Internal Camera
- [x] WiFi+Bluetooth
- [x] Shutdown/ Reboot/ Sleep/ Wake 
- [x] Speakers and headphones jack (Use ALCPlugFix)
- [x] App Store
- [x] iMessage and Facetime 
- [x] HDMI Output + Audio
- [x] Keyboard and Trackpad (multi gesture trackpad)
- [x] Airdrop , Handoff , Sidecar 
- [x] VT-D enable on bios with uncheck disableiomapper kernel quirk

</details>


<details>  


</details>  
