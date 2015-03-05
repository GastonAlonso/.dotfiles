""""""""""""""""""""""""""""
" Begin pathogen infection "
""""""""""""""""""""""""""""
" Load the following:      "
" - nerdtree               "
" - nerdcommenter
""""""""""""""""""""""""""""
execute pathogen#infect()

""""""""""""""""
" Vundle Begin "
""""""""""""""""

set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Enhanced JavaScript Syntax for Vim
Plugin 'jelera/vim-javascript-syntax'

" JavaScript bundle for vim, this bundle provides syntax and indet plugins
Plugin 'pangloss/vim-javascript'

" Color scheme
Plugin 'vim-scripts/xoria256.vim'

call vundle#end()
filetype plugin indent on

""""""""""""""
" Vundle End "
""""""""""""""

"""""""""""""""""""""""""""""""""""""""
" The following make code look pretty "
"""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax on
set background=light
colorscheme xoria256

"""""""""""""""""""""""""""""""""""""""""""""""""
" The following are for 4-space tab indentation "
"""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent
set softtabstop=4
set shiftwidth=4
set expandtab

"""""""""""""""""""""
" show line numbers "
"""""""""""""""""""""
:set number

""""""""""""""""""""""""""""""""""""""""""""""
" Create .swp files in a different directory."
""""""""""""""""""""""""""""""""""""""""""""""
set swapfile
set dir=~/tmp

""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlights text as you type an expression +    "
" search results are highlighted (\q removes it) "
""""""""""""""""""""""""""""""""""""""""""""""""""

:set incsearch
:set hlsearch
:nmap \q :nohlsearch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignores case when search is all lower case.           "
" Enforces case when upper case characters are included."
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:set ignorecase
:set smartcase

"""""""""""""""""""""""""""""""""""""""""
" Don't add newline at the end of files "
"""""""""""""""""""""""""""""""""""""""""
let g:PreserveNoEOL_Function = function('PreserveNoEOL#Python#Preserve')
let g:PreserveNoEOL = 1
