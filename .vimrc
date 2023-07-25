set nocompatible
filetype off

" [Vim-Plug]
if has('filetype')
  filetype indent plugin on
endif

if has('termguicolors')
  set termguicolors
endif

syntax enable

" [Default Shell]
set shell=/opt/homebrew/bin/bash

" [Plugins]
call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-syntastic/syntastic'
  Plug 'wojciechkepka/vim-github-dark'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-commentary'
  Plug 'sheerun/vim-polyglot'
  Plug 'dikiaap/minimalist'
call plug#end()

" [Settings]
set autoindent
set background=dark
set backup
set encoding=utf-8
set esckeys
set expandtab
set fenc=utf-8
set fileformats=unix,dos,mac
set guifont=sudo:h14
set guioptions+=c.t ruler
set guioptions=T
set guioptions=m
set hlsearch
set ignorecase
set incsearch
set noswapfile
set number! relativenumber!
set ruler
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set smartindent
set softtabstop=2
set t_Co=256
set t_ut=
set tabstop=2
set termguicolors
set timeoutlen=1000
set ttimeoutlen=20

" [Syntastic]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['black', 'isort']

" [NERDTree]
let NERDTreeIgnore=['__pycache__', '\.pyc$', '.pyo$']
map <C-n> :NERDTreeToggle<CR>

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" [autocmd FileType]
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType html,css,javascript,typescript,json,markdown,yml,xml setlocal shiftwidth=2 tabstop=2
autocmd FileType make setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=0

" [Color Scheme]"
colorscheme ghdark
highlight Normal ctermbg=233 guibg=#212121

filetype plugin indent on
