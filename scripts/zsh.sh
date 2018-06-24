#!/bin/sh

sudo pacman -S zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sudo pacman -S awesome-terminal-fonts powerline-fonts
sudo pacman -S pygmentize  # For ccat support

# TODO: set ZSH_THEME="agnoster"

# plugins=(
#   # git
#   dotenv
#   colored-man-pages
#   colorize  # ccat command
#   extract  # extract command
# )

# set terminal colors
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < gnome-shell-profile.dconf

# change shell to zsh
chsh -s /usr/bin/zsh
