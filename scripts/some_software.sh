#!/bin/sh

### Email Programs

sudo pacman -S thunderbird thunderbird-i18n-de


### Download Programs, tagger

sudo pacman -S transmission-gtk # torrent downloader

#yaourt -S jdownloader2 # general downloader

sudo pacman -S youtube-dl
echo "
# add alias for youtube-dl to download audio files
alias youtube-dl-audio=\"youtube-dl -x --audio-format vorbis --recode-video ogg --audio-quality 9\"
" >> ~/.bashrc

sudo pacman -S easytag

### Media Programs

sudo pacman -S krita

sudo pacman -S ffmpeg opencolorio poppler-qt5

sudo pacman -S gimp

sudo pacman -S inkscape

sudo pacman -S vlc

sudo pacman -S musescore # Create, play and print beautiful sheet music

sudo pacman -S kdegraphics-okular ebook-tools kdegraphics-mobipocket

#yaourt -S banshee

### Visualisation Programs

sudo pacman -S dia # diagram editor

sudo pacman -S graphviz xdot # graph visualisation

### Security, Network

sudo pacman -S gnome-nettool nmap
sudo pacman -S wireshark-gtk
