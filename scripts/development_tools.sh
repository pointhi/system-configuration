#!/bin/sh

### Java

sudo pacman -S jre7-openjdk jdk7-openjdk openjdk7-src openjdk7-doc
sudo pacman -S jre8-openjdk jdk8-openjdk openjdk8-src openjdk8-doc

sudo archlinux-java set java-8-openjdk  # use openjdk-8 by default


### Some development tools

sudo pacman -S colordiff meld python2-dbus  # diff tools

sudo pacman -S git svn # version control
sudo pacman -S gitg # version control gui


### Editors

sudo pacman -S gedit gedit-plugins gedit-code-assistance clang vala ruby-dbus libgit2-glib gucharmap
echo "export EDITOR=/usr/bin/gedit" >> ~/.bashrc # set gedit as default editor

sudo pacman -S eclipse-java

#sudo pacman -S intellij-idea-community-edition

yaourt -S atom-editor-bin

