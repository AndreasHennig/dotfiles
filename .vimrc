" General settings.
set nocompatible
set encoding=utf-8
syntax enable
set scrolloff=1
set noerrorbells
let g:netrw_special_syntax = 1

" Colors
"colorscheme desert
set background=dark

" Add numbers to each line on the left-hand side.
set number
set relativenumber

" Indentation settings.
" Sources: https://superuser.com/a/1104409
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set backspace=eol,start,indent
set softtabstop=4
"set listchars=eol:⏎,tab:>-,trail:~,extends:>,precedes:<,space:_
"set list

" Search settings.
set hlsearch
set ignorecase
set incsearch
set smartcase

" remaps
let mapleader=" "
nnoremap <LEADER>e :Ex<CR>

" vim plug
" Automatic installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'tpope/vim-fugitive'
    Plug 'jiangmiao/auto-pairs'
call plug#end()
