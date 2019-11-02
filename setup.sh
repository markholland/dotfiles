#!/bin/bash

which brew
if [ $? -ne 0 ]; then
  echo 'installing brew'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle

stow vim
stow zsh
stow git

open Snazzy.itermcolors

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# n package manager
curl -L https://git.io/n-install | bash

# circleci cli
curl -o /usr/local/bin/circleci https://circle-downloads.s3.amazonaws.com/releases/build_agent_wrapper/circleci && chmod +x /usr/local/bin/circleci
