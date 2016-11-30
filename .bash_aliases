# alias to restart network manager, since there's
# a bug and it always needs restarting:
alias rsnm='sudo service network-manager restart'

# because source devel/setup.bash is way too much typing:
alias src='source devel/setup.bash'

# aliases for rapidly moving to course directories:
alias 314='cd ~/Courses/ME314/'
alias 449='cd ~/Courses/ME449/'
alias 469='cd ~/Courses/EECS469/'
alias 495='cd ~/Courses/ME495/'

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
