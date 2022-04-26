"set rtp+=$HOME\vimfiles
syntax on
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'doums/darcula'
Plug 'haystackandroid/snow'
Plug 'preservim/nerdtree'
call plug#end()

set background=dark
colorscheme gruvbox

set number
highlight LineNr ctermfg=DarkGray

set ruler
set showmode

hi CursorLineNr cterm=bold term=bold
set cursorline
set cursorlineopt=number

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
