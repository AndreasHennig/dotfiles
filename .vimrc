" General settings.
set nocompatible
set encoding=utf-8
syntax enable
filetype on
set scrolloff=1
set noerrorbells
let g:netrw_special_syntax = 1

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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
nnoremap <LEADER>pv :NERDTreeToggle<CR>

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
    Plug 'morhetz/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'dense-analysis/ale'
    Plug 'OmniSharp/omnisharp-vim'
call plug#end()

let g:ale_linters = { 'cs': ['OmniSharp'] }

" Colors
colorscheme gruvbox
set background=dark
