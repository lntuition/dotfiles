set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256

" use ctrl-s to save, add ~/.bashrc stty -ixon
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>l
vnoremap <C-s> <Esc>:w<CR>

" remember latest cursor
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" use line number, modify number width also set number
set numberwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set cindent
set autoindent
set ruler
set foldmethod=marker

set mouse=r
set incsearch

set hi=1000
set title
set hls
set scs

set nobackup
set ignorecase
set smartcase

set showmatch
set nu
