#!/bin/bash

# This scripts is going to copy all files needed to be in my dotfiles into their directory.
# After than it pushes the script into the git repository.

DOTFILES=~/dev/dotfiles

COMMITMSG=$1

if [[ -z $COMMITMSG ]]; then
    COMMITMSG="Update configurations."
fi

# ZSH
cp $HOME/.zshrc $DOTFILES/.zshrc
# Neovim
mkdir -p $DOTFILES/neovim
cp $HOME/.config/nvim/* $DOTFILES/neovim/
# TMUX
cp $HOME/.tmux.conf $DOTFILES/tmux.conf
# VIM
cp $HOME/.vimrc $DOTFILES/.vimrc

# Newboat
mkdir -p $DOTFILES/newsboat
cp $HOME/.newsboat/* $DOTFILES/newsboat

cd $DOTFILES

git add .
git commit -m "${COMMITMSG}"
git push
