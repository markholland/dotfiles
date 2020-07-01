filetype plugin indent on
set nocompatible
filetype off
set mouse=a
set number
syntax enable
set background=dark
colorscheme molokai 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" USER PLUGINS
Plugin 'tomasr/molokai'

if has('persistent_undo')      "check if your vim version supports it
	set undofile                 "turn on the feature  
	set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif     

