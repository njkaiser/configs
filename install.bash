#!/bin/bash

# first things first:
sudo apt-get update

# second things second (apparently cmake isn't installed by default on 16.04?):
sudo apt-get install -y cmake

# install byobu:
sudo apt-get install -y byobu
byobu-disable-prompt # replace byobu prompt with normal bash prompt

# install tree:
sudo apt-get install -y tree

# install vim:
sudo apt-get install -y vim

# install Vundle:
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# compile YouCompleteMe server (vim plugin) with C-family language support:
sudo apt-get install -y clang
./.vim/bundle/YouCompleteMe/install.py --clang-completer

# install emacs:
sudo apt-get install -y emacs

# install atom:
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y atom

# install atom packages:
apm install minimap
apm install hard-wrap # Ctrl-Alt-y wraps lines at 80 characters
apm install language-cmake # cmake syntax highlighting
apm install remote-atom # for working over ssh
apm install teletype # remote code-sharing for atom

# install ag:
sudo apt-get install -y silversearcher-ag

# install ack-grep:
sudo apt-get install -y ack-grep

# install htop:
sudo apt-get install htop

# install git:
sudo apt-get install -y git

# install gitk:
sudo apt-get install -y gitk

# install spotify:
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

# install google chrome:
sudo echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt-key add linux_signing_key.pub
sudo apt-get update
sudo apt-get install -y google-chrome-stable
sudo rm /etc/apt/sources.list.d/google-chrome.list
rm linux_signing_key.pub

# install dconf (for setting terminal profile preferences):
# Ubuntu 16.04 ONLY
if [[ $(lsb_release -rs) == "16.04" ]]; then                                                        
    sudo apt install -y dconf-editor
    dconf load /org/gnome/terminal/ < bash_settings.dconf
fi

# install unity/gnome/compiz tweak tools:
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y unity-tweak-tool
sudo apt-get install -y compizconfig-settings-manager
sudo apt-get install -y compiz-plugins-extra

# install pip and all of the python packages I know I'll want:
sudo apt-get install -y python-pip
sudo pip install --upgrade pip # do before installing other packages via pip
sudo pip install numpy
sudo pip install scipy
sudo pip install matplotlib
sudo pip install tqdm # awesome status bar package

# necessary for matplotlib:
sudo apt install -y python-tk

# can't forget vlc:
sudo apt-get install -y vlc
