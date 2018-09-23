#!/bin/bash
set -x

# add symlinks for necessary config files
cd ~/
rm ~/.bash_aliases; ln -s ~/configs/.bash_aliases ~/.bash_aliases
rm ~/.gitignore_global; ln -s ~/configs/.gitignore_global ~/.gitignore_global
ln -s ~/configs/.nanorc ~/.nanorc
ln -s ~/configs/.tmux.conf
ln -s ~/configs/.vimrc

# set git to use some handy global config stuff:
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Nate Kaiser"
git config --global user.email "natejkaiser@gmail.com"
git config --global push.default simple
git config --global remote.origin.prune true

# set desktop background to most awesome picture in the world:
# DIR="$HOME/Pictures"
# PIC="$DIR/sdoEquinox_0171_fixed.png"
# gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
