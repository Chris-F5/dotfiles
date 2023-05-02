#     _               _
#    | |__   __ _ ___| |__  _ __ ___
#    | '_ \ / _` / __| '_ \| '__/ __|
#   _| |_) | (_| \__ \ | | | | | (__
#  (_)_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
export EDITOR=nvim

alias v=$EDITOR
alias g=git
alias sc=systemctl
alias ls='ls --color=auto'
alias grep='grep --color=auto'
