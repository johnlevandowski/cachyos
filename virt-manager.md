Virtual Machine
===============

Install qemu virtualization
---------------------------

https://libvirt.org/daemons.html#switching-to-modular-daemons  

```
pacman -S virt-manager qemu-full libvirt dnsmasq iptables
```

```
for drv in qemu interface network nodedev nwfilter secret storage
    systemctl unmask virt{$drv}d.service
    systemctl unmask virt{$drv}d{,-ro,-admin}.socket
    systemctl enable virt{$drv}d.service
    systemctl enable virt{$drv}d{,-ro,-admin}.socket
end
```

```
for drv in qemu network nodedev nwfilter secret storage
    systemctl start virt{$drv}d{,-ro,-admin}.socket
end
```

```
sudo usermod -aG kvm,libvirt $(whoami)
```


Test qemu connection
--------------------

```
virsh -c qemu:///system
virsh -c qemu:///session
```
