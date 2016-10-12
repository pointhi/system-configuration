#!/bin/sh

### Java

sudo pacman -S jre7-openjdk jdk7-openjdk openjdk7-src openjdk7-doc
sudo pacman -S jre8-openjdk jdk8-openjdk openjdk8-src openjdk8-doc

sudo archlinux-java set java-8-openjdk  # use openjdk-8 by default


### Python

sudo pacman -S python-pylint python2-pylint


### Some development tools

sudo pacman -S colordiff meld python2-dbus  # diff tools

sudo pacman -S git svn # version control
sudo pacman -S gitg # version control gui
yaourt -S gitkraken # version control gui

sudo pacman -S ghex # hex viewer

sudo pacman -S cloc # code line counter

### Editors

sudo pacman -S gedit gedit-plugins gedit-code-assistance clang vala ruby-dbus libgit2-glib gucharmap
#sudo /bin/su -c "echo 'EDITOR=\"/usr/bin/gedit\"' >> /etc/yaourtrc" # set gedit as default for yaourt # TODO: test change

sudo pacman -S eclipse-java

#sudo pacman -S intellij-idea-community-edition

sudo pacman -S atom


### Embedded software

sudo pacman -S openocd

yaourt -S arduino


### Electonic/Hardware development

sudo pacman -S kicad kicad-library kicad-library-3d # Electronic schematic and printed circuit board (PCB) design tools

sudo pacman -S qucs # An integrated circuit simulator with a graphical user interface

sudo pacman -S pulseview


### Meachanical development

sudo pacman -S openscad

sudo pacman -S freecad
