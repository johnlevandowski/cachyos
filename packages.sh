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

pacman -Qq \
cachyos-emerald-kde-theme-git \
cachyos-iridescent-kde \
cachyos-nord-kde-theme-git \
cachyos-wallpapers \
char-white \
kcalc \
partitionmanager \
cachyos-micro-settings micro \
vim vim-runtime \
cachyos-zsh-config oh-my-zsh-git zsh-autosuggestions zsh-completions zsh-history-substring-search zsh-syntax-highlighting zsh-theme-powerlevel10k zsh \
2>/dev/null | pacman -Rns -
