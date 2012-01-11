" .vimrc file
" (C) 2012 Eugen Minciu with many of the bundles used from janus [ https://github.com/carlhuda/janus ]

" === Basic Settings ===
set nocp
set number
set incsearch
set smartcase
set ruler
set wildmode=longest,list
let mapleader=","
set visualbell
set equalalways
set nocursorline
set autoread
set directory=/tmp/ 
filetype on
filetype plugin on
filetype indent on
syntax on
set wildignore+=*.o,*.obj,.git
set ai
set si
set softtabstop=2
set shiftwidth=2

call pathogen#infect() 



" === Plugin Settings ===
"acp
let g:acp_behaviorSnipmateLength=1
let g:acp_behaviorKeywordLength = 2
let g:acp_behaviorKeywordIgnores = ['if','end','class','module']

"ctrlp
let g:ctrlp_custom_ignore = '\.git$\|\.svn$\|\.hg$\|*\.o|*\.obj\|*\.jar\|vendor\|bin\|tags\|tmp\|log\|.DS_Store$'

" tagbar
let g:tagbar_autoclose=0

" === Shorcuts === 
" I limit myself to 20 shortcuts (most in pairs) to keep myself from going insane.

" ack: 2 shortcuts based on (f)ind
map <Leader>f :Ack 
map <Leader>F :Ack <cword><CR>

" ctrlp: 2 shortcuts based on (b)rowse
map <Leader>b :CtrlP<CR>
map <Leader>B :CtrlPBuffer<CR>

" gundo: 1 shortcut
map <Leader>u :GundoToggle<CR>

" less_test: 4 shortcuts
" <Leader>r - run test what's under cursor
" <Leader>R - test the entire file
" <Leader>l - run the last test
map <Leader>T :silent !echo 'rake' > tmp/testcmd<CR>

" tagbar: 1 shortcut
map <Leader>t :TagbarToggle<CR>

" goto def: 2 shorcuts
map <Leader>d /def <CR>zz:noh<CR>
map <Leader>D ?def <CR>zz:noh<CR>

" goto class: 2 shorcuts
map <Leader>c /class <CR>zz:noh<CR>
map <Leader>C ?class <CR>zz:noh<CR>

" center: 1 shorcut (of a shortcut)
map <space> zz

" ctags
map <Leader>x :silent !ctags -R --exclude="public" --exclude="*.haml" --exclude="vendor" --exclude="db" --exclude="script" .<CR>
