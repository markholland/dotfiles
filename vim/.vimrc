call pathogen#infect()
filetype plugin indent on
set nocompatible              " be iMproved, required
filetype off                  " required
set mouse=a
set number
syntax enable
set background=dark
colorscheme molokai 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" USER PLUGINS
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
"Bundle "b4winckler/vim-objc"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%100v.\+/

if has('persistent_undo')      "check if your vim version supports it
	set undofile                 "turn on the feature  
	set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif     

