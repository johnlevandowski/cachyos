Gaming
======

```
sudo pacman -S cachyos-gaming-applications protonplus lact --needed
paru -S curseforge --needed
```


AMD GPU Power Profile should be 3D_FULL_SCREEN by default
---------------------------------------------------------

```
sudo systemctl enable --now lactd
```

### LACT

* Powerformance Level = Manual
* Power Profile Mode = 3D_FULL_SCREEN
* Apply

```
cat /sys/class/drm/card1/device/power_dpm_force_performance_level
cat /sys/class/drm/card1/device/pp_power_profile_mode
```

KDE System Settings > Power Management > Switch to power profile = Performance  


Battle.net in Steam launcher
----------------------------

https://download.battle.net/en-us/desktop  

https://support.tradeskillmaster.com/tsm-desktop-application/how-do-i-set-up-the-tsm-desktop-application  

* Add a Game > Add a Non-Steam Game > Browse and select installer
* Installer > Right-click Properties > Compatibility > Force the use of a specific Steam Play compability tool > Select Proton version
* Installer > Click Play > Complete installation (exit at login prompt)
* Installer > Right-click Properties > Target = "/home/[USER]/.local/share/Steam/steamapps/compatdata/[PREFIX_ID]/pfx/drive_c/Program Files (x86)/Battle.net/Battle.net Launcher.exe" (quotes required)
* Installer > Right-click Properties > Start In = /home/[USER]/.local/share/Steam/steamapps/compatdata/[PREFIX_ID]/pfx/drive_c/Program Files (x86)/Battle.net/
* Installer > Click Play


Steam Game Proton Versions
--------------------------

World of Warcraft = GE-Proton10-34  


Gamescope Steam launch options
------------------------------

```
gamescope -W 2560 -H 1440 --fullscreen --hdr-enabled --adaptive-sync -- %command%
```


World of Warcraft Settings
--------------------------

https://lutris.net/games/battlenet/  
Place game downloads in directory outside of wine prefix so that lutris installer script can be run again without having to download all games again  

https://lutris.net/games/trade-skill-master/  
Trade Skill Master > Settings > General > WoW Directory > X drive  
Trade Skill Master > Settings > General > Run at startup = OFF  
Lutris > Trade Skill Master > Configure > System options > CLI Mode = OFF  
Lutris > Add icon > https://x.com/TSMAddon/photo  

To reduce VRR flicker it's best to leave the display at it's maximum capable refresh rate and then cap the FPS 4 below that (or lower if that's all the gpu can sustain without wild fluctions that cuase flicker)  
Low frame compensation only kicks in when the fps drops below the monitors refresh rate floor (48hz)  


GCVM_L2_PROTECTION_FAULT_STATUS
-------------------------------

3D_FULL_SCREEN power profile

WoW > DX11  

Try without using dual monitors - could be caused by monitors with different refresh rates or set refresh rates equal  

Different proton versions  
