#!/bin/sh

### Steam

sudo pacman -S steam

# https://wiki.archlinux.org/index.php/Steam/Troubleshooting#Dynamic_linker
sudo sed -i 's/\/usr\/bin\/steam/env LD_PRELOAD='\''\/usr\/$LIB\/libstdc++.so.6 \/usr\/$LIB\/libgcc_s.so.1 \/usr\/$LIB\/libxcb.so.1 \/usr\/$LIB\/libgpg-error.so\'\'' \/usr\/bin\/steam/g' /usr/share/applications/steam.desktop
sudo sed -i 's/steam steam:/env LD_PRELOAD='\''\/usr\/$LIB\/libstdc++.so.6 \/usr\/$LIB\/libgcc_s.so.1 \/usr\/$LIB\/libxcb.so.1 \/usr\/$LIB\/libgpg-error.so\'\'' steam steam:/g' /usr/share/applications/steam.desktop


### NonFree Games

yaourt -S albion-online-launcher-bin albion-online-live-game-data-bin


### FOSS Games

sudo pacman -S 0ad # Cross-platform, 3D and historically-based real-time strategy game
sudo pacman -S supertuxkart # Kart racing game featuring Tux and his friends
