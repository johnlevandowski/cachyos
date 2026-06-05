CachyOS Installation
====================

BIOS > disable secure boot  

Don't close cachyos hello when installing

* Limine
* BTRFS
* KDE Plasma


BTRFS Snapper Settings
----------------------

```
sudo nano /etc/default/limine
MAX_SNAPSHOT_ENTRIES=auto
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

```
sudo timedatectl set-local-rtc 0 --adjust-system-clock
sudo cachyos-rate-mirrors
sudo cachy-update
tldr --update
```


Firewall
--------

```
sudo ufw status verbose
sudo journalctl -k -r -g "UFW"
sudo ufw logging off
sudo ufw status verbose
```


Mounts
------

```
git clone https://github.com/johnlevandowski/cachyos.git $HOME/Documents/GitHub/cachyos
cd $HOME/Documents/GitHub/cachyos/mounts/
```

https://github.com/johnlevandowski/cachyos/tree/main/mounts  


Packages
--------

```
chmod +x $HOME/Documents/GitHub/cachyos/packages.sh
sudo $HOME/Documents/GitHub/cachyos/packages.sh
```

```
mkdir -p /home/john/.local/share/gnucash
cp /mnt/rpi5/Documents/backup/GnuCash/saved-reports-2.8 /home/john/.local/share/gnucash/  
```


AUR Packages
------------

```
paru -S appimagelauncher

pacman -Qmi
```


System Settings
---------------

https://github.com/johnlevandowski/dotfiles#restore-dotfiles-from-git-repository  

Panel > Show Panel Configuration > Panel Height = 50  
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


Printer
-------

```
sudo systemctl enable cups.socket
```

Settings > Printers > Add  
Foomatic Brother HL-2240/hl1250 driver for HL-2230  
http://localhost:631  
