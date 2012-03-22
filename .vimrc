" .vimrc file
" (C) 2012 Eugen Minciu with many of the bundles used from janus [ https://github.com/carlhuda/janus ]

" === Basic Settings ===
set nocp
set number
set incsearch
set hlsearch
set smartcase
set ruler
set wildmode=longest,list
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
set softtabstop=2
set shiftwidth=2
set history=1000

call pathogen#infect() 

" color settings
set bg=dark
colorscheme solarized
" === Plugin Settings ===
"acp
let g:acp_behaviorKeywordLength = 5
let g:acp_behaviorKeywordIgnores = ['if','end','class','module', 'do']
let g:acp_behaviorRubyOmniLength = 2

"ctrlp
let g:ctrlp_custom_ignore = '\.git$\|\.svn$\|\.hg$\|*\.o|*\.obj\|*\.jar\|vendor\|bin\|tags\|tmp\|log\|.DS_Store$'

" tagbar
let g:tagbar_autoclose=0

"haskell
let g:haddock_browser = "/usr/bin/lynx"
let g:haddock_docdir = "/usr/share/haddock-2.9.2"
let g:haskell_indent_if = 2 

"vim-ruby-refactoring
let g:ruby_refactoring_map_keys = 0

" === Shorcuts === 

" ack: 4 shortcuts 
map <Leader>f :Ack 
map <Leader>F :Ack <cword><CR>
map <Leader>J <c-w>jj<CR>
map <Leader>K <c-w>jk<CR>

" ctrlp: 2 shortcuts 
map <Leader>o :CtrlP<CR>
map <Leader>O :CtrlPBuffer<CR>

" gundo: 1 shortcut
map <Leader>u :GundoToggle<CR>

" less_test: 4 shortcuts
" <Leader>r - run test what's under cursor
" <Leader>R - test the entire file
" <Leader>l - run the last test
map <Leader>T :silent !echo 'xvfb-run rake' > tmp/testcmd<CR><C-l>

" tagbar: 1 shortcut
map <Leader>t :TagbarToggle<CR>

" goto def: 2 shorcuts
map <Leader>d /def <CR>zz:noh<CR>
map <Leader>D ?def <CR>zz:noh<CR>

" center: 1 shorcut (of a shortcut)
map <space> zz

" tags: 2 shortcuts
map <Leader>x :silent !ctags -R --exclude="public" --exclude="*.haml" --exclude="vendor" --exclude="db" --exclude="script" .<CR><C-l>
map <Leader>j :tjump 

" stop hilighting
map <Leader>n :noh<CR>
