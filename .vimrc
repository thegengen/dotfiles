set nocp
set number
set incsearch
set hlsearch
set smartcase
set ruler
set wildmode=longest,list
let mapleader=","
set visualbell
set equalalways
set nocursorline
set autoread
set directory=/tmp/ 
set wildignore+=*.o,*.obj,.git,vendor/*
" indentation
set ai
set si
set softtabstop=2
set shiftwidth=2

filetype off
call pathogen#runtime_append_all_bundles()
filetype on
filetype plugin on
filetype indent on
syntax on

let g:acp_behaviorSnipmateLength=1
let g:acp_behaviorKeywordLength = 4
let g:acp_behaviorKeywordIgnores = []

map ; :CommandT<CR>
map <Leader><Leader> :CommandTBuffer<CR>
let g:CommandTMaxHeight=15

map <Leader>t :Rtags<CR>
map <Leader>f :Ack 
map <Leader>a :Tabularize assignment<CR>

map <Leader>v :vsplit<CR>
map <Leader>h :split<CR>

map <Leader>o <C-o><C-o>
map <Leader>n :noh<CR>

runtime macros/matchit.vim 
let s:save_cpo = &cpo
set cpo&vim
