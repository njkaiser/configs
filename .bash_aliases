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
alias ga='git add -A'
alias gc='git commit -am '
alias gp='git push'

# prevent python interpreter from creating .pyc and .pyo files:
PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE

# source collection of useful custom packages
source /home/njk/nifty_nodes/ws/devel/setup.bash
