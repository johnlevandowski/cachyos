#!/bin/sh

pacman -S \
7zip \
cachyos-gaming-applications protonplus \
cups foomatic-db foomatic-db-engine print-manager system-config-printer \
distrobox podman podman-compose \
gimp libheif \
github-cli \
gnucash libdbi-drivers \
gparted \
lact \
libreoffice-fresh \
plasma-disks \
qalculate-qt \
rclone \
virt-manager qemu-full libvirt dnsmasq iptables \
--needed

pacman -R kcalc
pacman -R partitionmanager
