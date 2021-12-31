#!/bin/bash

which brew
if [ $? -ne 0 ]; then
  echo 'installing brew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/markholland/.zprofile eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew bundle

defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/dotfiles"

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc

stow zsh
stow git
stow vim

# Vundle Vim package manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Pathogen Vim package manager
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

open Snazzy.itermcolors
