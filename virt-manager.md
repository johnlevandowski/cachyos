Virtual Machine
===============

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
# Add your user to the libvirt and kvm groups
sudo usermod -aG libvirt $(whoami)
sudo usermod -aG kvm $(whoami)
```

```
# Test
virsh -c qemu:///system
virsh -c qemu:///session
```
