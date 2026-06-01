#!/bin/sh

pacman -S \
7zip \
cachyos-gaming-applications protonplus \
cups foomatic-db foomatic-db-engine print-manager system-config-printer \
distrobox podman podman-compose \
gimp libheif \
github-cli \
gnome-disk-utility \
gnucash libdbi-drivers \
lact \
libreoffice-fresh \
plasma-disks \
qalculate-qt \
rclone \
virt-manager qemu-full libvirt dnsmasq iptables \
--needed

pacman -R kcalc
pacman -R partitionmanager

pacman -R cachyos-zsh-config
pacman -R oh-my-zsh-git
pacman -R zsh-autosuggestions
pacman -R zsh-completions
pacman -R zsh-history-substring-search
pacman -R zsh-syntax-highlighting
pacman -R zsh-theme-powerlevel10k
pacman -R zsh

pacman -R vim
pacman -R vim-runtime

pacman -R cachyos-micro-settings
pacman -R micro
