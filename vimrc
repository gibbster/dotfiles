execute pathogen#infect()
execute pathogen#helptags()

set nocompatible
set statusline=%<\ %n:%f\ %m%r%y%{fugitive#statusline()}%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set laststatus=2
filetype plugin indent on

syntax on
set nu
au BufRead,BufNewFile *.jst set filetype=html

set showmatch
set ignorecase
set showmode
set ts=4
set sw=4
set autoindent
set smartindent
set cursorline
set history=1000

nmap <C-N> :noh <CR>


set showcmd		" Show (partial) command in status line.
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch    " Highlight search term
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set clipboard=unnamed

set expandtab
set softtabstop=4

set tags=./tags;

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

let g:vim_markdown_folding_disabled=1


set ttimeoutlen=50

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*.class


if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

set background=dark
colorscheme solarized
