set nocompatible
syntax on
set background=dark

set showmatch
set ignorecase
set showmode
set ts=2
set sw=2
set autoindent
set smartindent

nmap <C-N> :noh <CR>

set nu

set showcmd		" Show (partial) command in status line.
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

set expandtab
set textwidth=79
set softtabstop=2

set tags=./tags;

filetype on
filetype plugin on
filetype indent on

set grepprg=ack-grep\ -a
