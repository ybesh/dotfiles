set nocompatible

syntax on
filetype plugin indent on

set autoindent                 " On going to the next line, etc.
set tabstop    =8              " A tab char appears as 8 spaces (default)
set expandtab                  " Make sure <Tab> always inserts spaces
set softtabstop=4              " <Tab> inserts 4 spaces
set shiftwidth =4              " >> indents 4 spaces
set shiftround                 " >> indents to next multiple of 'shiftwidth'
set number                     " Show the line numbers
set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks and the start of insert
set formatoptions-=tc          " Turn off automatically splitting lines (:h fo-table)
set nohidden                   " Make sure you save your dirty buffers before switching (default)
set laststatus=2               " Always show statusline
set display=lastline           " Show as much as possible of the last line
set showmode                   " Show the current mode in the command line
set showcmd                    " Show the command being typed in in the bottom right

set incsearch                  " Search while typing in search key
set wrapscan                   " Rotative search-hit iteration
set hlsearch                   " Highlight all matches

set report=0                   " Always report the # of changed lines

set synmaxcol=300              " Only syntax-highlight the first 300 cols, for performance

set cursorline

set splitbelow                 " Open new windows below the current window.
set splitright                 " Open new windows right of the current window.

set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap/
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
