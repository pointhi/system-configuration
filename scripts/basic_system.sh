#!/bin/sh

### Login Manager (GDM)

sudo pacman -S gdm
sudo systemctl disable lightdm.service
sudo systemctl enable gdm.service


### Bash

echo "
# https://askubuntu.com/questions/15926/how-to-avoid-duplicate-entries-in-bash-history
export HISTCONTROL=ignoreboth:erasedups
" >> ~/.bashrc
