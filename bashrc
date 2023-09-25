#     _               _
#    | |__   __ _ ___| |__  _ __ ___
#    | '_ \ / _` / __| '_ \| '__/ __|
#   _| |_) | (_| \__ \ | | | | | (__
#  (_)_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
export EDITOR=kak

alias v=$EDITOR
alias g=git
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias t=tmux
mc() {
  mkdir -p "$1" && cd "$1"
}

export JAVA_HOME=/usr/lib/jvm/openjdk17

find ~/r/chris256.com/www/asciiart/ -type f | sort -R  | head -n1 | xargs cat
