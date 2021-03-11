set nocompatible

" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim 

call vundle#begin()

" let Vundle manage Vundle, required 
Plugin 'VundleVim/Vundle.vim' 
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'scrooloose/nerdtree' " file tree making, use :NERDTree 
Plugin 'scrooloose/syntastic' 
Plugin 'dracula/vim'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'Raimondi/delimitMate' " auto bracket making 
Plugin 'maralla/completor.vim' " change completers/cpp/init.py : re.split(br'...)

" for delimitMate 
let delimitMate_expand_cr=1

" for vim-airline 
let g:airline_theme='onehalfdark' 
let g:airline#extensions#tabline#enabled = 1 
let g:airline_powerline_fonts = 1

set laststatus=2 
set encoding=utf-8 
set t_Co=256

" for syntastic : default settings 
set statusline+=%#warningmsg# 
set statusline+=%{SyntasticStatuslineFlag()} 
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0 
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0 
let g:syntastic_check_on_wq = 0

" use ctrl-s to save, add ~/.bashrc stty -ixon 
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>l 
vnoremap <C-s> <Esc>:w<CR>

" remember latest cursor 
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

call vundle#end() " required 
filetype plugin indent on " required

color dracula

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
