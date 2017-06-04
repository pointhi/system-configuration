#!/bin/sh

### Java

sudo pacman -S jre7-openjdk jdk7-openjdk openjdk7-src openjdk7-doc
sudo pacman -S jre8-openjdk jdk8-openjdk openjdk8-src openjdk8-doc

sudo archlinux-java set java-8-openjdk  # use openjdk-8 by default


### Python

sudo pacman -S python-pip python2-pip
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

# add assembly dialects to language-specs
sudo wget "https://wiki.gnome.org/Projects/GtkSourceView/LanguageDefinitions?action=AttachFile&do=get&target=asm-intel.lang" -O "/usr/share/gtksourceview-3.0/language-specs/asm-intel.lang"
sudo wget "https://wiki.gnome.org/Projects/GtkSourceView/LanguageDefinitions?action=AttachFile&do=get&target=i386asm.lang" -O "/usr/share/gtksourceview-3.0/language-specs/asm-att.lang"
sudo sed -i "s/i386 Assembler/Assembler (ATT)/g" /usr/share/gtksourceview-3.0/language-specs/asm-att.lang
sudo wget "https://raw.githubusercontent.com/pointhi/Mips-Assembly-Syntax-Highlighting/master/mal.lang" -O "/usr/share/gtksourceview-3.0/language-specs/asm-mips.lang"

sudo pacman -S eclipse-java
# http://stackoverflow.com/a/3572010
sudo sed -i 's/Exec=eclipse/Exec=env SWT_GTK3=0 eclipse/g' /usr/share/applications/eclipse.desktop

sudo pacman -S intellij-idea-community-edition
yaourt -S pycharm-community

sudo pacman -S atom


### Embedded software

sudo pacman -S openocd

yaourt -S arduino


### Electonic/Hardware development

#sudo pacman -S kicad kicad-library kicad-library-3d # Electronic schematic and printed circuit board (PCB) design tools

sudo pacman -S qucs # An integrated circuit simulator with a graphical user interface

sudo pacman -S pulseview


### Meachanical development

sudo pacman -S openscad

sudo pacman -S freecad
