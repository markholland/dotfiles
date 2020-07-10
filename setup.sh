#!/bin/bash

which brew
if [ $? -ne 0 ]; then
  echo 'installing brew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew bundle

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc

stow vim
stow git
stow zsh

open Snazzy.itermcolors

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


