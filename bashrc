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
alias tsm=transmission-remote
alias z=zathura
mc() {
  mkdir -p "$1" && cd "$1"
}

alias get_idf='. ~/s/esp-idf/export.sh'

alias mmv='kak -e "execute-keys !ls<space>-Q<ret><a-s>Himv<space><esc>!cat<ret>a<space><esc>l<a-l><a-\;>&"'

export JAVA_HOME=/usr/lib/jvm/openjdk17
export PATH=$PATH:/opt/riscv/bin
export PATH=$PATH:/home/chris/s/flutter/bin

export RESTIC_REPOSITORY="s3:s3.eu-central-1.amazonaws.com/inspiron-home-bec72f62f4eb4564b273d9f8cfa2f97e"
export RESTIC_PASSWORD_FILE="/home/chris/.restic_password"

cat ~/asciiart/cat1 | awk '{ print "\t" $0 }'

date +"%Y %b %d %a %H:%M"

#source ~/miniconda3/etc/profile.d/conda.sh
