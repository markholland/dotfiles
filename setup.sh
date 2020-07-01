#!/bin/bash

which brew
if [ $? -ne 0 ]; then
  echo 'installing brew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew bundle

stow vim
stow git

open Snazzy.itermcolors

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


