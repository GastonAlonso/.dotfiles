""""""""""""""""
" Vundle Begin "
""""""""""""""""
set nocompatible " Vundle required
filetype off     " Vundle required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Nerdtree filesystem explorer
Plugin 'scrooloose/nerdtree'

" Nerdcommenter comment functions
Plugin 'scrooloose/nerdcommenter'

" Syntax checking for vim
Plugin 'scrooloose/syntastic'

" JavaScript bundle for vim, this bundle provides syntax and indet plugins
Plugin 'pangloss/vim-javascript'

" Syntax highlighting and indenting for JSX
Plugin 'mxw/vim-jsx'

" Vim syntax highlighting for Vue components
Plugin 'posva/vim-vue'

" Enhanced JavaScript Syntax for vim
Plugin 'jelera/vim-javascript-syntax'

" LESS syntax checking
Plugin 'groenewege/vim-less'

" Stylus syntax highlighting
Plugin 'wavded/vim-stylus'

" Lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'

" Airline-like bar for tmux
Plugin 'edkolev/tmuxline.vim'

" Silver searcher plugin
Plugin 'rking/ag.vim'

" Color schemes
Plugin 'vim-scripts/xoria256.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'dracula/vim'

call vundle#end()         " Vundle required
filetype plugin indent on " Vundle required

""""""""""""""
" Vundle End "
""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" Set OS clipboard to unnamed register "
""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed

""""""""""""""""""""""""""""""""""""""""
" The following makes code look pretty "
""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax on
set background=dark
colorscheme gruvbox

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

" Show airline bar at all times.
set laststatus=2

" Eliminate delays when switching mode.
set ttimeoutlen=10

" Hide default vim mode indicator, not needed with airline.
:set noshowmode

" Enable airline-tabline.
let g:airline#extensions#tabline#enabled = 1

" Display tab number in tab.
let g:airline#extensions#tabline#tab_nr_type = 1

" Disable displaying buffers in tabs.
let g:airline#extensions#tabline#show_buffers = 0

" Allow powerline fonts for fancy tabs/line.
let g:airline_powerline_fonts = 1
