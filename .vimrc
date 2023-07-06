" Vim-Plug:

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

colorscheme codedark

filetype on
filetype plugin on
filetype indent on

syntax on

set relativenumber
highlight LineNr ctermfg=DarkGray

set ruler

hi CursorLineNr cterm=bold term=bold
set cursorline
set cursorlineopt=number
"set cursorcolumn

set background=dark

set smartindent

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set nowrap
set noswapfile
set nobackup
set nowritebackup

set belloff=all

set incsearch
set hlsearch

set backspace=indent,eol,start
