"set rtp+=$HOME\vimfiles
syntax on

call plug#begin('$HOME\vimfiles\plugged')
Plug 'morhetz/gruvbox'
call plug#end()

colors gruvbox
set background=dark

set number
set ruler

set smartindent

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

"set hlsearch"

set nowrap
set noswapfile
set nobackup
set nowritebackup

set belloff=all

set incsearch
set backspace=indent,eol,start
