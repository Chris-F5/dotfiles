#!/bin/sh

dir=~/r/dotfiles

cd ~
ln -s $dir/bash_profile ~/.bash_profile
ln -s $dir/bashrc ~/.bashrc
ln -s $dir/gitconfig ~/.gitconfig
ln -s $dir/tmux.conf ~/.tmux.conf
ln -s $dir/xinitrc ~/.xinitrc

mkdir -p ~/.config/{kak,kak-lsp}
ln -s $dir/kak/kakrc ~/.config/kak/kakrc
ln -s $dir/kak-lsp/kak-lsp.toml ~/.config/kak-lsp/kak-lsp.toml
