#!/bin/bash

# TODO: move all files from ~/config/* to ~/*

# set git to use global gitignore file:
git config --global core.excludesfile ~/.gitignore_global
git config --global user.name "Nate Kaiser"
git config --global user.email "natejkaiser@gmail.com"
git config --global push.default simple

# install atom packages:
apm install minimap
apm install hard-wrap # Ctrl-Alt-y wraps lines at 80 characters
apm install language-cmake # cmake syntax highlighting
apm install remote-atom # for working over ssh
apm install teletype # remote code-sharing for atom

# byobu settings:
byobu-disable-prompt # replace byobu prompt with normal bash prompt
