# this needs to be sourced before other workspaces are sourced
# other workspaces sourced in .bash_aliases file
source /opt/ros/indigo/setup.bash

# alias to restart network manager, since there's
# a bug and it always needs restarting:
alias rsnm='sudo service network-manager restart'

# aliases for updating/upgrading packages:
alias ud='sudo apt-get update'
alias ug='sudo apt-get upgrade'

# alias to open a nautilus window at the current terminal's directory,
# because, you know, sometimes GUIs are actually useful
alias owd='nautilus $(pwd)'

# because source devel/setup.bash is way too much typing:
alias src='source devel/setup.bash'
alias srco='source /opt/ros/indigo/setup.bash'

# aliases for rapidly moving to course directories:
alias 314='cd ~/Courses/ME314; pwd; ll;'
alias 449='cd ~/Courses/ME449; pwd; ll;'
alias 469='cd ~/Courses/EECS469; pwd; ll;'
alias 495='cd ~/Courses/ME495; pwd; ll;'
alias 333='cd ~/Courses/ME333; pwd; ll;'
alias 369='cd ~/Courses/EECS369; pwd; ll;'
alias 432='cd ~/Courses/EECS432; pwd; ll;'
alias W='cd ~/Courses/Winter_Project/ws/; pwd; ll;'

# things I literally copied from Jarvis:
alias go='xdg-open'

# git commands that are just the right length that you have to type out almost the entire word:
alias gf='git fetch'
alias gm='git merge origin/master'
alias gs='git status'
alias gaa='git add -A'
alias gau='git add -u'
alias gc='git commit -m '
alias gp='git push'

alias rl='roslaunch ' # why should I have to type out 'rosla'? way too many keystrokes...

# prevent python interpreter from creating .pyc and .pyo files:
PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE

# source collection of useful custom packages
# source /home/njk/nifty_nodes/ws/devel/setup.bash

# set bash completion to be case insensitive (from Jarvis)
bind 'set completion-ignore-case on'

# add syntax color and piping to less
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=" -R "
