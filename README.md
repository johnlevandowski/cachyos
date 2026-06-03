CachyOS Installation
====================

BIOS > disable secure boot  

* Limine
* BTRFS
* KDE Plasma


BTRFS Snapper Settings
----------------------

```
sudo nano /etc/default/limine
MAX_SNAPSHOT_ENTRIES=40
```

Btrfs Assistant > Snapper Settings  

* Enable timeline snapshots = ON  
* Hourly = 7  
* Daily = 7  
* Weekly = 7  
* Monthly = 7  
* Yearly = 0  
* Number = 10  
* Snapper timeline enabled = ON  
* Snapper cleanup enabled = ON  

Click "Save"  
Click "Apply systemd changes"  


Updates
-------

~~~
sudo timedatectl set-local-rtc 0 --adjust-system-clock
sudo cachyos-rate-mirrors
sudo cachy-update
tldr --update
~~~


Firewall
--------

~~~
sudo ufw status verbose
sudo journalctl -k -r -g "UFW"
sudo ufw logging off
sudo ufw status verbose
~~~


Mounts
------

https://github.com/johnlevandowski/cachyos/tree/main/mounts  


Packages
--------

```
sudo ./packages.sh
```

```
cp /mnt/rpi5/Documents/backup/GnuCash/saved-reports-2.8 /home/john/.local/share/gnucash/  
```


AUR Packages
------------

```
paru -S appimagelauncher
paru -S github-desktop-plus-bin

pacman -Qmi
```


System Settings
---------------

https://github.com/johnlevandowski/dotfiles#restore-dotfiles-from-git-repository  

Panel > Networks Icon > Enable WiFi = OFF  

* Mouse & Touchpad > Pointer Speed = 1.00  
* Mouse & Touchpad > Enable pointer Acceleration = OFF  
* Display & Monitor > Scale = 125%  
* Display & Monitor > Refresh rate = 180hz  
* Display & Monitor > Adaptive sync = Automatic  
* Display & Monitor > Enable HDR = ON  
* Display & Monitor > AOC > Calibrate HDR Brightness > 1100,200  
* Display & Monitor > LG > Calibrate HDR Brightness > 400,200  
* Wallpaper > Set for all screens = ON  
* Wallpaper > Images > Choose  
* Color and Themes > Global Theme > Breeze Dark  
* Login Screen > Apply Plasma settings  
* Login Screen > Configure Appearance > Images > Choose  
* Screen Locking > Lock screen automatically = 1 minute  
* Screen Locking > Configure Appearance > Images > Choose  
* Power Management > Turn off screen = 1 minute, When locked: 20 seconds  
* Power Management > Switch to power profile = Performance  
* Autostart > delete steam  
* Session > Ask for confirmatin on shutdown, restart, and logout = OFF  
* Session > On login, launch apps that were open = Start with an empty session  


World of Warcraft
-----------------

https://lutris.net/games/battlenet/  
Place game downloads in directory outside of wine prefix so that lutris installer script can be run again without having to download all games again  

https://lutris.net/games/trade-skill-master/  
Trade Skill Master > Settings > General > WoW Directory > X drive  
Trade Skill Master > Settings > General > Run at startup = OFF  
Lutris > Trade Skill Master > Configure > System options > CLI Mode = OFF  
Lutris > Add icon > https://x.com/TSMAddon/photo  

https://curseforge.overwolf.com/downloads/curseforge-latest-linux.AppImage  

To reduce VRR flicker it's best to leave the display at it's maximum capable refresh rate and then cap the FPS 4 below that (or lower if that's all the gpu can sustain without wild fluctions that cuase flicker)  
Low frame compensation only kicks in when the fps drops below the monitors refresh rate floor (48hz)  


Printer
-------

```
sudo systemctl enable cups.socket
```

Settings > Printers > Add  
Foomatic Brother HL-2240/hl1250 driver for HL-2230  
http://localhost:631  


Secure Boot
-----------

### Enable Setup Mode in UEFI BIOS
Secure Boot Mode = Custom  
Reset to Setup mode  
it will ask for a confirmation, hit Yes  
then it will ask whether you wanna reboot without saving, choose No  
Expert Key management  
Factory Key Provision = Disable  
Save & Exit  

### CachyOS Terminal
https://wiki.cachyos.org/configuration/secure_boot_setup/  
Follow Instructions "Installing sbctl and Enrolling Keys"  
Follow Instructions "Signing the Kernel Image and Boot Manager > Limine"  
Enable automatic config checksum enrollment in /etc/default/limine  
Proceed to generate a hash for Limine’s splash image  
Reboot - No need to go into BIOS as secure boot should now be enabled (secure boot will stay in custom mode)  
Follow Instructions "Secure Boot Status Check"  
