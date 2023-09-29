#!/bin/bash
set -x

cd ~/

# add symlinks for necessary config files
#rm ~/.bash_aliases;
#rm ~/.gitignore_global;
#rm ~/.nanorc;
#rm ~/.tmux.conf;
#rm ~/.ycm_extra_conf.py;
#rm ~/.vimrc;
#rm ~/.startup.py;

# fail if these files already exist (don't want to overwrite)
ln -s ~/configs/.bash_aliases ~/.bash_aliases
ln -s ~/configs/.gitignore_global ~/.gitignore_global
# ln -s ~/configs/.nanorc ~/.nanorc
# ln -s ~/configs/.tmux.conf ~/.tmux.conf
ln -s ~/configs/.ycm_extra_conf.py ~/.ycm_extra_conf.py
ln -s ~/configs/.vimrc ~/.vimrc
ln -s ~/configs/.startup.py ~/startup.py

# automatically import some modules when iPython starts
mkdir -p ~/.ipython/profile_default/startup/
ln -s ~/configs/.startup.py ~/.ipython/profile_default/startup/.startup.py

# set git to use some handy global config stuff:
#git config --global user.name "Nate Kaiser"
#git config --global user.email "natejkaiser@gmail.com"
git config --global core.excludesfile ~/.gitignore_global
git config --global push.default simple
git config --global remote.origin.prune true
git config --global push.default current

# set the byobu prompt to the normal bash PS1
byobu
byobu-disable-prompt
exit

echo "source /usr/share/doc/fzf/examples/key-bindings.bash" >> ~/.bashrc

# set desktop background to most awesome picture in the world:
# DIR="$HOME/Pictures"
# PIC="$DIR/sdoEquinox_0171_fixed.png"
# gsettings set org.gnome.desktop.background picture-uri "file://$PIC"
