# this needs to be sourced before other workspaces are sourced
if [ -d /opt/ros/kinetic/ ] ; then
  source /opt/ros/kinetic/setup.bash
elif [ -d /opt/ros/indigo/ ] ; then
  source /opt/ros/indigo/setup.bash
else
  echo 'INFO: no versions of ROS found in /opt/'
fi

# never forget a typed command ever again by setting HIST to infinite
HISTSIZE=
HISTFILESIZE=

# tmux/byobu history adds to bash history file
export HISTCONTROL=ignoredups:erasedups # no duplicate entries
shopt -s histappend # append to history, don't overwrite it
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND" # Save and reload the history after each command finishes

# alias to restart network manager, since there's a
# bug and it always needs restarting on my desktop:
alias rsnm='sudo service network-manager restart'

# aliases for updating/upgrading packages:
alias ud='sudo apt-get update'
alias ug='sudo apt-get upgrade'

# alias to open a nautilus window at the current terminal's directory,
# because, you know, sometimes GUIs are actually useful
alias owd='nautilus $(pwd) &'

# because source devel/setup.bash is way too much typing:
alias src='source devel/setup.bash'
alias srco='source /opt/ros/indigo/setup.bash'

# open stuff with default program (copied from Jarvis):
alias go='xdg-open'

# make nano automatically open with sudo when necessary (copied from Jarvis):
function nano() {
  nano=`which nano`;
  if ([ -e "$1" ] && ! [ -w "$1" ]) || ( ! [ -e "$1" ] && ! [ -w "`dirname $1`" ]);
  then
    read -n 1 -p "$1 is not editable by you. sudo [y/n]? " y
    if ([ "$y" == "y" ] || [ "$y" == "Y" ]);
      then
        echo -e "\n" && sudo $nano $@
      else
        echo -e "\n" && $nano $@
    fi
  else
    echo -e "\n" && $nano $@
  fi
}

function vim() {
  vim=`which vim`;
  if ([ -e "$1" ] && ! [ -w "$1" ]) || ( ! [ -e "$1" ] && ! [ -w "`dirname $1`" ]);
  then
    read -n 1 -p "$1 is not editable by you. sudo [y/n]? " y
    if ([ "$y" == "y" ] || [ "$y" == "Y" ]);
      then
        echo -e "\n" && sudo $vim $@
      else
        echo -e "\n" && $vim $@
    fi
  else
    echo -e "\n" && $vim $@
  fi
}

# git commands that are just the right length that you have to type out almost the entire word:
alias gf='git fetch'
alias gs='git status'
alias ga='git add '
alias gaa='git add -A'
alias gau='git add -u'
alias gc='git commit -m '
alias gd='git diff '
alias gl='git log'
alias glg='git log --decorate --oneline --graph'
alias glg1='git log --decorate --oneline --graph --first-parent'
alias gsl='git stash list | cat'
alias gss='git stash save '
alias gsp='git stash pop'
alias gbv='git branch -v | cat'

# why should I have to type out 'rosla'? way too many keystrokes...
alias rl='roslaunch '

# tmux / byobu aliases:
alias rnw='tmux movew -r'

# useful command line aliases:
alias f='find . -type f -iname '

# why did I not do this earlier?
alias v='vim'

# cd is hard
alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'

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

# could also use git's built-in function __git_ps1, but it gives no indication of clean or dirty
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != *"nothing to commit"* ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1$(parse_git_dirty)]/"
}

# add git branch/status information to shell prompt:
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\e[38;5;220m\]$(parse_git_branch)\[\033[00m\]\$ '

# trim the directory portion of the prompt;
PROMPT_DIRTRIM=3 # this only works in bash 4+

alias cdl='cd_to_last_chronological_dir'
function cd_to_last_chronological_dir {
  latest_dir=''
  for d in `ls -d */ | grep "^20......_......"`; do
    if [ "$d" \> "$latest_dir" ]; then
      latest_dir=$d
    fi
    # echo "$d"
  done
  echo "latest chronological directory: $latest_dir"
  cd $latest_dir
}

# set editor to vim for editing commands
export VISUAL=vim
export EDITOR=vim
