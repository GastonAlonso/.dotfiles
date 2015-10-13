""""""""""""""""""""""""""""
" Begin pathogen infection "
""""""""""""""""""""""""""""
" Load the following:      "
" - nerdtree               "
" - nerdcommenter          "
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

" Syntax checking
Plugin 'scrooloose/syntastic'

" Lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'

" Airline-like bar for tmux
Plugin 'edkolev/tmuxline.vim'

" Silver searcher plugin
Plugin 'rking/ag.vim'

" Color schemes
Plugin 'vim-scripts/xoria256.vim'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

""""""""""""""
" Vundle End "
""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" The following makes code look pretty "
""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax on
set background=dark
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

""""""""""""""""""""""""""""""""""
" Show hidden files on nerd tree "
""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden = 1

""""""""""""""""""""""""""""""
" Add a space after comments "
""""""""""""""""""""""""""""""
let NERDSpaceDelims = 1

""""""""""""""""""""""""""""
" Welcome to VIM Airlines! "
""""""""""""""""""""""""""""

" show airline bar at all times.
set laststatus=2

" eliminate delays when switching mode.
set ttimeoutlen=50

" hide vim mode text.
:set noshowmode

" Enable airline-tabline.
let g:airline#extensions#tabline#enabled = 1

" Display tab number in tab.
let g:airline#extensions#tabline#tab_nr_type = 1

" Disable displaying buffers in tabs.
let g:airline#extensions#tabline#show_buffers = 0

" Allow powerline fonts for fancy tabs/line.
let g:airline_powerline_fonts = 1
