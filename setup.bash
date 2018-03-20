#!/bin/bash
set -x

# SCRATCH THIS, BETTER TO SYMLINK
# move all files from ~/config/* to ~/*
# for file in $HOME/config/{..?,.[!.],}*; do
#     mv $file $HOME
# done

# add symlinks for necessary config files
cd ~/
ln -s ~/config/.vimrc .
ln -s ~/config/.bash_aliases .

# set git to use global gitignore file:
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Nate Kaiser"
git config --global user.email "natejkaiser@gmail.com"
git config --global push.default simple

# set desktop background to most awesome picture in the world:
DIR="$HOME/Pictures"
PIC="$DIR/sdoEquinox_0171_fixed.png"
gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
