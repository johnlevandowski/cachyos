Gaming
======

```
sudo pacman -S cachyos-gaming-applications protonplus dmemcg-booster plasma-foreground-booster lact
paru -S appimagelauncher
```

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
