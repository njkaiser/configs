# this needs to be sourced before other workspaces are sourced
if [ -d /opt/ros/kinetic/ ] ; then
  source /opt/ros/kinetic/setup.bash
elif [ -d /opt/ros/indigo/ ] ; then
  source /opt/ros/indigo/setup.bash
else
  echo 'INFO: no versions of ROS found in /opt/'
fi


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

# aliases for rapidly moving to course directories:
alias 314='cd ~/Courses/ME314; pwd; ll;'
alias 333='cd ~/Courses/ME333; pwd; ll;'
alias 349='cd ~/Courses/EECS349; pwd; ll;'
alias 358='cd ~/Courses/EECS358; pwd; ll;'
alias 369='cd ~/Courses/EECS369; pwd; ll;'
alias 432='cd ~/Courses/EECS432; pwd; ll;'
alias 449='cd ~/Courses/ME449; pwd; ll;'
alias 454='cd ~/Courses/ME454; pwd; ll;'
alias 469='cd ~/Courses/EECS469; pwd; ll;'
alias 495='cd ~/Courses/ME495; pwd; ll;'
alias W='cd ~/Courses/Winter_Project/; pwd; ll;'
alias F='cd ~/Courses/Final_Project/; pwd; ll;'

# open stuff with default program (copied from Jarvis):
alias go='xdg-open'

# make nano automatically open with sudo when necessary (copied from Jarvis):
function nano() {
  nano=`which nano`;
  if ([ -e "$1" ] && ! [ -w "$1" ]) || ( ! [ -e "$1" ] && ! [ -w "`dirname $1`" ]);
  then
    read -n 1 -p "$1 is not editable by you. sudo [y/n]? " y
    [ "$y" == "y" ] || [ "$y" == "Y" ] && echo -e "\n" && sudo $nano $@
  else
    $nano $@
  fi
}

# git commands that are just the right length that you have to type out almost the entire word:
alias gf='git fetch'
alias gm='git merge origin/master'
alias gs='git status'
alias ga='git add '
alias gaa='git add -A'
alias gau='git add -u'
alias gc='git commit -m '
alias gp='git push '
alias gd='git diff '
alias gl='git log'

# why should I have to type out 'rosla'? way too many keystrokes...
alias rl='roslaunch '

# tmux / byobu aliases:
alias rnw='tmux movew -r'

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

# # include git branch & status on command prompt
# if [ -f ~/.git-prompt.sh ]; then
#   source ~/.git-prompt.sh
#   export GIT_PS1_SHOWDIRTYSTATE=1
#   export GIT_PS1_SHOWUPSTREAM="auto"
#   export GIT_PS1_SHOWCOLORHINTS=1
#   PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\e[38;5;220m$(__git_ps1 " (%s)")\[\033[00m\]\$ '
# fi 

# could also use git's built-in function __git_ps1, but it gives no indication of clean or dirty
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != *"nothing to commit"* ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1$(parse_git_dirty)]/"
}

# MYPSDIR_AWK=$(cat << 'EOF'
# BEGIN { FS = OFS = "/" }
# { 
#   if (length($0) > 16 && NF > 3)
#      print $1,".." NF-2 "..",$(NF-1),$NF
#    else
#      print $0
# }
# EOF
# )

# my replacement for \w prompt expansion
# HOMESYM="~"
# export MYPSDIR='$(echo -n "${PWD/#$HOME/$HOMESYM}" | awk "$MYPSDIR_AWK")'
# PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\e[38;5;220m$($(eval 'echo ${MYPSDIR}') ' (%s)')\[\033[00m\]\$ "
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\e[38;5;220m$(parse_git_branch)\[\033[00m\]\$ '

# set editor to vim for editing commands
export VISUAL=vim
export EDITOR=vim
