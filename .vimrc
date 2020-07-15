" [Vundle Config]

" :PluginList - lists configured plugins
" :PluginInstall - install plugins; append to update or just :PluginUpdate
" :PluginSearch $foo - searches for foo; append ! to refresh local cache
" :PluginClean - confirms removal of unused plugins; append ! to auto-approve

set nocompatible
filetype off
" Sets runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" [Required]: let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
" [My Plugins]
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhartington/oceanic-next'
Plugin 'altercation/vimi-colors-solarized'
call vundle#end()

filetype plugin on

" [General]
set backspace=indent,eol,start  "Allows 'backspace' in INSERT
set history=1000                "Number of saved lines in history
set showmode                    "Shows incomplete commands
set gcr=a:blinkon0              "Disables blinking cursor
set visualbell                  "Disables sounds
set autoread                    "Reloads files changed outside of vim
set softtabstop=4

" [Indentation]
set autoindent          "Newlines inherit identation from previous lines
set expandtab           "Converts tabs to spaces
set shiftround          "Rounds indentation to shiftwidth's nearest
set shiftwidth=4        "Number of tab spaces
set tabstop=4           "Indent using four spaces

" [Search]
set hlsearch    "Enables search highlighting
set ignorecase  "Ignores case when searching
set incsearch   "Shows partial matchces for incremental searches
set smartcase   "Switches search to case-sensitve if query contains uppercase

" [Performance]
set complete-=i     "Limit files search for auto-complete
set lazyredraw      "Don't update screen during macro and script execution

" [Text Rendering]
set display+=lastline   "Always tries to show paragraph's last line
set encoding=utf-8      "Uses encoding that supports unicode
set linebreak           "Avoids word wrap in middle of word
set scrolloff=1         "Number of creen columns left/right
syntax enable           "Enables syntax highlighting
set wrap                "Enables line wrapping

" [User Interface]
set laststatus=2        "Always displays status bar
set ruler               "Always shows cursors position
set wildmenu            "Diplays command line tabe complete options as menu
set tabpagemax=50       "Max number of tab pages opened from command line
"set cursorline          "Highlight line currently under cursor
set number              "Shows line numbers
set relativenumber      "Shows current line number relative to all others
set noerrorbells        "Disables beep on error
set visualbell          "Flashes screen instead of beeping on errors
set mouse=a             "Enables scrolling and resizing with mouse
set title               "Sets window's title to current fiile being edited
set background=dark     "Uses colors that suit dark backgrounds

" [Code Folding]
set foldmethod=indent   "Folds based on indentation levels
set foldnestmax=3       "Only folds up to three nested levels
set nofoldenable        "Disables folding by default

" [Miscellaneous]
set autoread                   "Re-reads files if unmodified in Vim
set backspace=indent,eol,start "Allows backspaces during INSERT mode
set backupdir=~/.cache/vim     "Director to store backup files
set confirm  "Displays confirmation dialog when closing unsaved file
set dir=~/.cache/vim           "Directory to store swap files
set formatoptions+=j           "Deletes comment characters when joining lines
set hidden              "Hides files in the background instead of closing them
set history=1000        "Sets undo history limit
set nomodeline          "Ignore's file's mod lines to use .vimrc
set noswapfile          "Disables file swapping
set nrformats-=octal    "Interprets octal as decimal when incrementing numbers
set shell               "The shell used to execute commands
set spell               "Enables spellchecking
set wildignore+=.pyc,.swp  "Ignores files with matching patterns
