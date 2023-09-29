#!/bin/bash
set -x

# first things first:
# sudo apt-get update
sudo apt update

# second things second:
# sudo apt-get install -y cmake

# install git & gitk:
# sudo apt-get install -y git
# sudo apt-get install -y gitk

# install byobu:
sudo apt-get install -y byobu
byobu-disable-prompt # replace byobu prompt with normal bash prompt

# install tree:
sudo apt-get install -y tree

# install vim:
# sudo apt-get install -y vim

# install Vundle:
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# compile YouCompleteMe server (vim plugin) with C-family language support:
sudo apt-get install -y clang
./.vim/bundle/YouCompleteMe/install.py --clang-completer

# TODO clone and insall all vim plugins here:
git clone git@github.com:vim-airline/vim-airline.git .vim/bundle/
vim +PluginInstall +qall

# install atom:
# sudo add-apt-repository -y ppa:webupd8team/atom
# sudo apt-get update
# sudo apt-get install -y atom

# install atom packages:
# apm install minimap
# apm install hard-wrap # Ctrl-Alt-y wraps lines at 80 characters
# apm install language-cmake # cmake syntax highlighting
# apm install remote-atom # for working over ssh
# apm install teletype # remote code-sharing for atom

# install ag & ack-grep:
sudo apt-get install -y silversearcher-ag
# sudo apt-get install -y ack-grep

# install htop:
sudo apt-get install -y htop

# install gparted:
# sudo apt-get install -y gparted

# install spotify:
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
# echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# sudo apt-get update
# sudo apt-get install -y spotify-client

# install google chrome:
# sudo echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
# wget https://dl.google.com/linux/linux_signing_key.pub
# sudo apt-key add linux_signing_key.pub
# sudo apt-get update
# sudo apt-get install -y google-chrome-stable
# sudo rm /etc/apt/sources.list.d/google-chrome.list
# rm linux_signing_key.pub

# install dconf (for setting terminal profile preferences):
# Ubuntu 16.04 ONLY
# if [[ $(lsb_release -rs) == "16.04" ]]; then
#     sudo apt install -y dconf-editor
#     dconf load /org/gnome/terminal/ < bash_settings.dconf
# fi

# install unity/gnome/compiz tweak tools:
# sudo apt-get install -y gnome-tweak-tool
# sudo apt-get install -y unity-tweak-tool
# sudo apt-get install -y compizconfig-settings-manager
# sudo apt-get install -y compiz-plugins-extra # extra settings include multi-monitor snapping

# install pip and all of the python packages I know I'll want:
# sudo apt-get install -y python-pip
# sudo pip install --upgrade pip # do before installing other packages via pip
# sudo pip install numpy
# sudo pip install scipy
# sudo apt install -y python-tk # necessary for matplotlib
# sudo pip install matplotlib
# sudo pip install tqdm # awesome status bar package
# sudo pip install ipython

# can't forget vlc:
# sudo apt-get install -y vlc

# useful graphical tool for modifying PDFs:
# sudo apt-get install -y pdfshuffler 

# sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
# sudo apt-get update
# sudo apt-get install -y simplescreenrecorder

sudo apt install -y fzf
