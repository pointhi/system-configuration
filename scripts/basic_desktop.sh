#!/bin/sh

### Login Manager (GDM)

sudo pacman -S gdm
sudo systemctl disable lightdm.service
sudo systemctl enable gdm.service
