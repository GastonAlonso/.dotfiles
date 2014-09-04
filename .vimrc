""""""""""""""""""""""""""""
" Begin pathogen infection "
""""""""""""""""""""""""""""
execute pathogen#infect()

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
set background=dark
colorscheme xoria256

"""""""""""""""""""""""""""""""""""""""""""""""""
" The following are for 2-space tab indentation "
"""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent
set softtabstop=2
set shiftwidth=2
set expandtab

"""""""""""""""""""""
" show line numbers "
"""""""""""""""""""""
:set number
