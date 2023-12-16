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
| Thunderbolt        | Intel JHL6240 Alpine Ridge Thunderbolt 3                          |


</details>
<details>  
<summary><strong>What's working</strong></summary>
</br>

- [x] Intel UHD 620 Graphics
- [x] All USB ports
- [x] Thunderbolt Ports
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
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.11.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.32.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.37.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.43.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.46.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.28.56.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.00.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.04.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.15.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.29.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.33.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.52.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.29.55.png?raw=true"/>
<img src="https://github.com/riotampanoy/Dell-Latitude-7400/blob/main/Screenshot/Screenshot%202023-12-17%20at%2001.30.22.png?raw=true"/>
</details>