" .vimrc file
" (C) 2012 Eugen Minciu with many of the bundles used from janus [ https://github.com/carlhuda/janus ]

" === Basic Settings ===
set nocp
set number
set incsearch
"set hlsearch
set smartcase
set ruler
set wildmode=list:longest
let mapleader=","
set novisualbell
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
set expandtab
set softtabstop=2
set shiftwidth=2
set history=1000

" save the file if vim is inactive for more than 2 secs
"set updatetime=1500
"autocmd CursorHold,CursorHoldI * silent! w
"autocmd InsertLeave * silent! w
map s <ESC>:w<CR>

call pathogen#infect() 

" color settings
set bg=light
colorscheme Tomorrow

" === Plugin Settings ===
" acp
let g:acp_completeoptPreview = 1

let g:acp_behaviorKeywordLength = 5
let g:acp_behaviorKeywordIgnores = ['if','end','class','module', 'do']
let g:acp_behaviorRubyOmniLength = 2

"ctrlp
let g:ctrlp_custom_ignore = '\.git$\|\.svn$\|\.hg$\|*\.o|*\.obj\|*\.jar\|vendor\|bin\|tags\|tmp\|log\|.DS_Store$'
let g:ctrlp_lazy_update = 1 


" === Shorcuts === 

" ack: 5 shortcuts 
map <Leader>f :Ack 
map <Leader>F :Ack <cword><CR>
map <Leader>n :cnext<CR>
map <Leader>p :cprev<CR>
map <Leader>c :s<CR>:w<CR>:cnext<CR>

" ctrlp: 2 shortcuts 
map <Leader>o :CtrlP<CR>
map <Leader>O :CtrlPBuffer<CR>

" less_test: 1 shortcut
map <Leader>T :silent !echo 'xvfb-run bundle exec rake' > tmp/testcmd<CR><C-l>

" center: 1 shorcut (of a shortcut)
map <space> zz

" tags: 2 shortcuts
map <Leader>; :silent !ctags -R --exclude="coverage" --exclude="public"--exclude="**/*.haml" --exclude="**/*.js" --exclude="vendor" --exclude="db" --exclude="script" .<CR><C-l>
map ; :tjump 

" window navigaton: 2 shortcuts
map <Leader>j <C-w>j
map <Leader>k <C-w>k
