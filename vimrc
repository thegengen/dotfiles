" .vimrc file

" (C) 2012 Eugen Minciu with many of the bundles used from janus 
" [ https://github.com/carlhuda/janus ]

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

set scrolloff=10

" save the file if vim is inactive for more than 2 secs
"set updatetime=1500
"autocmd CursorHold,CursorHoldI * silent! w
"autocmd InsertLeave * silent! w
map s <ESC>:w<CR>

" completion
":set completeopt=longest,menuone,preview
":inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"imap <expr> <tab> pumvisible() ? "<down>" : "<c-n><down>"
"imap <expr> <s-tab> pumvisible() ? "<up>" : "<c-n><up>"

call pathogen#infect() 

" color settings
set bg=light
colorscheme Tomorrow

" === Plugin Settings ===
" acp
"let g:acp_completeoptPreview = 1

"let g:acp_behaviorKeywordLength = 5
"let g:acp_behaviorKeywordIgnores = ['if','end','class','module', 'do']
"let g:acp_behaviorRubyOmniLength = 2
"let g:acp_ignoreCaseOption = 0
let g:SuperTabDefaultCompletionType = '<c-p>'
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

" commentary: 2 shortcuts
xmap <Leader>c  <Plug>Commentary
nmap <Leader>c  <Plug>Commentary
xmap <Leader>C  <Plug>Commentary
nmap <Leader>C  <Plug>CommentaryUndo

" ctrlp: 2 shortcuts 
map <Leader>g :CtrlP<CR>
map <Leader>G :CtrlPBuffer<CR>

" less_test: 1 shortcut
map <Leader>T :silent !echo 'xvfb-run bundle exec rake' > tmp/testcmd<CR><C-l>

" center: 1 shorcut (of a shortcut)
map <space> zz

" tags: 2 shortcuts
map <Leader>; :silent !ctags -R --exclude="coverage" --exclude="public"--exclude="**/*.haml" --exclude="**/*.js" --exclude="vendor" --exclude="db" --exclude="script" .<CR><C-l>
map ; :tjump 

" window navigaton: 3 shortcuts
map <Leader>j <C-w>j
map <Leader>k <C-w>k
map <Leader>o <C-w>o
