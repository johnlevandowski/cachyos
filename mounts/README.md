Mounts
======

Samba Share
-----------

```
sudo mkdir -p /etc/samba
sudo nano /etc/samba/.smbcredentials
```

```
username=your_samba_user
password=your_samba_password
```

```
sudo chmod 600 /etc/samba/.smbcredentials
sudo mkdir -p /mnt/rpi5
sudo cp mnt-rpi5.mount /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now mnt-rpi5.mount
sudo chown -R $USER:$USER /mnt/rpi5
```


Games Drive
-----------

```
sudo mkdir -p /mnt/games
sudo cp mnt-games.mount /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now mnt-games.mount
sudo chown -R $USER:$USER /mnt/games
```
