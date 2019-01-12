#!/bin/bash
set -x

# add symlinks for necessary config files
cd ~/
rm ~/.bash_aliases; ln -s ~/configs/.bash_aliases ~/.bash_aliases
rm ~/.gitignore_global; ln -s ~/configs/.gitignore_global ~/.gitignore_global
rm ~/.nanorc; ln -s ~/configs/.nanorc ~/.nanorc
rm ~/.tmux.conf; ln -s ~/configs/.tmux.conf ~/.tmux.conf
rm ~/.vimrc; ln -s ~/configs/.vimrc ~/.vimrc
rm ~/.ycm_extra_conf.py; ln -s ~/configs/.ycm_extra_conf.py ~/.ycm_extra_conf.py

# set git to use some handy global config stuff:
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Nate Kaiser"
git config --global user.email "natejkaiser@gmail.com"
git config --global push.default simple
git config --global remote.origin.prune true

byobu-disable-prompt

# set desktop background to most awesome picture in the world:
# DIR="$HOME/Pictures"
# PIC="$DIR/sdoEquinox_0171_fixed.png"
# gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
