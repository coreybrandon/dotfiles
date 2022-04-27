" Vim-Plug

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'

call plug#end()

syntax on
set tabstop=4
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green


