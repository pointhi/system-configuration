#!/bin/sh

PWD_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

HOME_DIR="/home/$USER"

SCRIPT_TEMPLATE_DIR="$PWD_DIR/user_templates"
USER_TEMPLATE_DIR="$HOME_DIR/Vorlagen"  # TODO: more reliable way to get dir?


### Login Manager (GDM)

sudo pacman -S gdm
sudo systemctl disable lightdm.service
sudo systemctl enable gdm.service


### Bash

echo "
# https://askubuntu.com/questions/15926/how-to-avoid-duplicate-entries-in-bash-history
export HISTCONTROL=ignoreboth:erasedups
" >> ~/.bashrc


### Add file templates

cp "$SCRIPT_TEMPLATE_DIR/"* "$USER_TEMPLATE_DIR/"
