#     _               _
#    | |__   __ _ ___| |__  _ __ ___
#    | '_ \ / _` / __| '_ \| '__/ __|
#   _| |_) | (_| \__ \ | | | | | (__
#  (_)_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
export EDITOR=nvim
#export ANDROID_HOME=/opt/android-sdk
#export PATH=$PATH:$ANDROID_HOME/tools/bin:$ANDROID_HOME/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin
export PATH="$PATH:~/.config/emacs/bin"

export PATH=$PATH:~/.nix-profile/bin

alias v=$EDITOR
alias g=git
alias sc=systemctl
alias ls='ls --color=auto'
alias grep='grep --color=auto'
mc() {
  mkdir -p "$1" && cd "$1"
}
