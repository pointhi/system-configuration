#!/bin/sh

PWD_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

HOME_DIR="/home/$USER"

SCRIPT_TEMPLATE_DIR="$PWD_DIR/user_templates"
USER_TEMPLATE_DIR="$HOME_DIR/Vorlagen"  # TODO: more reliable way to get dir?


### Login Manager (GDM)

sudo pacman -S gdm gnome-screensaver
sudo systemctl disable lightdm.service
sudo systemctl enable gdm.service
gsettings set org.gnome.desktop.screensaver lock-enabled true
sudo pacman -R lightdm-webkit2-greeter lightdm light-locker gnome-shell-extension-status-menu-buttons light-locker-settings

### Bash

echo "
# https://askubuntu.com/questions/15926/how-to-avoid-duplicate-entries-in-bash-history
export HISTCONTROL=ignoreboth:erasedups
" >> ~/.bashrc


### Add file templates

cp "$SCRIPT_TEMPLATE_DIR/"* "$USER_TEMPLATE_DIR/"


### Some desktop programs

sudo pacman -S dconf-editor

#yaourt -S nautilus-typeahead

sudo pacman -S gnome-clocks # TODO: 24 hour format?
sudo pacman -S gnome-characters
sudo pacmam -S gnome-maps
sudo pacman -S gnome-power-manager

sudo pacman -S alacarte


### Desktop integration

yaourt -S chrome-gnome-shell-git


### Printer and scanner support

yaourt -S cnijfilter-mx470series

sudo pacman -S sane
sudo pacman -S simple-scan

sudo usermod -aG scanner $USER


### Fonts

sudo pacman -S noto-fonts-emoji


### Some system settings

gsettings set org.gnome.nautilus.preferences enable-interactive-search true

# disable tmpfs on /tmp (not everyone has enough RAM to extract archives of around 1GB on a tmpfs)
# https://bbs.archlinux.org/viewtopic.php?id=148380
#sudo systemctl mask tmp.mount

# 8192 is way to low for my usage cases
# https://bugs.archlinux.org/task/47830
echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf
