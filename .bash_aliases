# this needs to be sourced before other workspaces are sourced
# if [ -d /opt/ros/kinetic/ ] ; then
#   source /opt/ros/kinetic/setup.bash
# elif [ -d /opt/ros/indigo/ ] ; then
#   source /opt/ros/indigo/setup.bash
# else
#   echo 'INFO: no versions of ROS found in /opt/'
# fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoredups:erasedups

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# tmux/byobu history adds to bash history file
export HISTCONTROL=ignoredups:erasedups # no duplicate entries
shopt -s histappend # append to history, don't overwrite it
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" # Save and reload the history after each command finishes

# set editor to vim for editing commands
export VISUAL=vim
export EDITOR=vim

# alias to restart network manager, since there's a
# bug and it always needs restarting on my desktop:
alias rsnm='sudo service network-manager restart'

# aliases for updating/upgrading packages:
alias ud='sudo apt-get update'
alias ug='sudo apt-get upgrade'

# alias to open a nautilus window at the current terminal's directory,
# because, you know, sometimes GUIs are actually useful.
alias owd='nautilus $(pwd) &'

# because source devel/setup.bash is way too much typing:
# alias src='source devel/setup.bash'
# alias srco='source /opt/ros/indigo/setup.bash'

# open stuff with default program (copied from Jarvis):
alias go='xdg-open'

# make nano automatically open with sudo when necessary (copied from Jarvis):
# function nano() {
#   nano=`which nano`;
#   if ([ -e "$1" ] && ! [ -w "$1" ]) || ( ! [ -e "$1" ] && ! [ -w "`dirname $1`" ]);
#   then
#     read -n 1 -p "$1 is not editable by you. sudo [y/n]? " y
#     if ([ "$y" == "y" ] || [ "$y" == "Y" ]);
#       then
#         echo -e "\n" && sudo $nano $@
#       else
#         echo -e "\n" && $nano $@
#     fi
#   else
#     echo -e "\n" && $nano $@
#   fi
# }

# function vim() {
#   vim=`which vim`;
#   if ([ -e "$1" ] && ! [ -w "$1" ]) || ( ! [ -e "$1" ] && ! [ -w "`dirname $1`" ]);
#   then
#     read -n 1 -p "$1 is not editable by you. sudo [y/n]? " y
#     if ([ "$y" == "y" ] || [ "$y" == "Y" ]);
#       then
#         echo -e "\n" && sudo $vim $@
#       else
#         echo -e "\n" && $vim $@
#     fi
#   else
#     echo -e "\n" && $vim $@
#   fi
# }

# git commands that are just the right length that you don't have to type out almost the entire word:
alias gf='git fetch '
alias gp='git pull '
alias gs='git status '
alias ga='git add '
alias gaa='git add -A '
alias gau='git add -u '
alias gc='git commit -m '
alias gd='git diff '
alias gl='git log '
alias gco='git checkout '
alias glg='git log --decorate --oneline --graph'
alias glg1='git log --decorate --oneline --graph --first-parent'
alias gsl='git stash list | cat'
alias gss='git stash save '
alias gssp='git stash show -p '
alias gsp='git stash pop '
alias gbv='git branch -v | cat'

# tmux / byobu aliases:
alias rnw='tmux movew -r'

# useful command line aliases:
function f() {
  find . -type f -iname "$1" | cut -c3-
}

# prevent python interpreter from creating .pyc and .pyo files:
PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE
PYTHONSTARTUP=~/configs/.startup.py
export PYTHONSTARTUP

# set bash completion to be case insensitive (from Jarvis)
bind 'set completion-ignore-case on'

# add syntax color and piping to less
export LESSOPEN='| /usr/share/source-highlight/src-hilite-lesspipe.sh %s'
export LESS=' -R '

# could also use git's built-in function __git_ps1, but it gives no indication of clean or dirty
# function parse_git_dirty {
#   [[ $(git status 2> /dev/null | tail -n1) != *"nothing to commit"* ]] && echo "*"
# }

function parse_git_branch {
  # git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1$(parse_git_dirty)]/"
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1]/"
}

# source ~/.git-prompt.sh # gives access to `__git_ps1`

# add git branch/status information to shell prompt:
# Color codes can be found at: https://en.wikipedia.org/wiki/ANSI_escape_code#Colors
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\e[38;5;97m\]$(parse_git_branch)\[\033[00m\]\$ '
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\e[38;5;220m\]__git_ps1 "[%s]"\[\033[00m\]\$ '


# trim the directory portion of the prompt;
PROMPT_DIRTRIM=3 # this only works in bash 4+

# swap 2 filesnames in one command
function swap()
{
  local TMPFILE=$(mktemp)
  mv "$1" $TMPFILE
  mv "$2" "$1"
  mv $TMPFILE "$2"
}

# Single tab completion:
bind 'set show-all-if-ambiguous on'

# Screw having to reach for the shift key!
bind 'set completion-ignore-case on'
