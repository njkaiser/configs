#!/bin/bash

# first things first:
sudo apt-get update

# install byobu:
sudo apt-get install -y byobu

# install tree:
sudo apt-get install -y tree

# install vim:
sudo apt-get install -y vim

# install emacs:
sudo apt-get install -y emacs

# install atom:
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y atom

# install ag:
sudo apt-get install -y silversearcher-ag

# install ack-grep:
sudo apt-get install -y ack-grep

# install git:
sudo apt-get install -y git

# install gitk:
sudo apt-get install -y gitk

# install spotify:
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client
