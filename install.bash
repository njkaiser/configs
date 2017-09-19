#!/bin/bash

# TODO: move all files from ~/config/* to ~/*

# first things first
sudo apt-get update

# install byobu
sudo apt-get install -y byobu

# install tree
sudo apt-get install -y tree

# install vim
sudo apt-get install -y vim

# install emacs
sudo apt-get install -y emacs

# install atom
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y atom

# install ag
sudo apt-get install -y silversearcher-ag

# install ack-grep
sudo apt-get install -y ack-grep

# install gitk
sudo apt-get install gitk
