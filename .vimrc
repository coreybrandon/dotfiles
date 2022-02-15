" Vim-Plug

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'

call plug#end()

filetype on
filetype plugin on
filetype indent on

syntax on
set backspace=eol,start,indent
set belloff=all 
set encoding=utf-8
set history=50
set ls=2
set mouse=
set shiftwidth=4
set showbreak=▹
set softtabstop=4
set tabstop=4

set ai 
set expandtab
set hlsearch
set linebreak
set modeline
set noesckeys
set nofoldenable
set nowrap
set number
set ruler
set shiftround
set showcmd
set showmode
set smartcase
set wildmenu

let g:solarized_termcolors=256

set background=dark
colorscheme solarized
