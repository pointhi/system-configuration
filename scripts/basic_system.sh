#!/bin/sh

PWD_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

HOME_DIR="/home/$USER"

SCRIPT_TEMPLATE_DIR="$PWD_DIR/user_templates"
USER_TEMPLATE_DIR="$HOME_DIR/Vorlagen"  # TODO: more reliable way to get dir?


### Login Manager (GDM)

sudo pacman -S gdm gnome-screensaver
sudo systemctl disable lightdm.service
sudo systemctl enable gdm.service


### Bash

echo "
# https://askubuntu.com/questions/15926/how-to-avoid-duplicate-entries-in-bash-history
export HISTCONTROL=ignoreboth:erasedups
" >> ~/.bashrc


### Add file templates

cp "$SCRIPT_TEMPLATE_DIR/"* "$USER_TEMPLATE_DIR/"


### Some desktop programs

sudo pacman -S dconf-editor

yaourt -S nautilus-typeahead

sudo pacman -S gnome-clocks # TODO: 24 hour format?
sudo pacman -S gnome-characters

### Some system settings

gsettings set org.gnome.nautilus.preferences enable-interactive-search true

# disable tmpfs on /tmp (not everyone has enough RAM to extract archives of around 1GB on a tmpfs)
# https://bbs.archlinux.org/viewtopic.php?id=148380
sudo systemctl mask tmp.mount

# 8192 is way to low for my usage cases
# https://bugs.archlinux.org/task/47830
echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf
