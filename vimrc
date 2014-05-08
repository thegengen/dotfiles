" .vimrc file
" (C) 2012 Eugen Minciu

" === Basic Behavior ===
" The absolute requirements for a decent vim session
set nocp              " Disable vi compatibility
let mapleader=","     " Most keymappings use this. Better than \
set noswapfile        " Don't bleed swap files all over the place
filetype on           " Enable plugins and syntax highlighting
filetype plugin on
set autoread          " Reload external file changes on the fly
set shortmess=atI     " Stop with all the annoying prompts.
set history=1000      " give us a proper amount of history



" === Indentation ===
set autoindent
set expandtab



" === Display options ===
set novisualbell
set nocursorline
set hlsearch
set number



" === Status line ===
set laststatus=2
set ruler             " display line and col no in the ruler



" === Advanced Behavior ===
set hidden            " keep previous buffers open
set autowrite         " but save them when running commands or leaving them
set scrolloff=10      " always keep 10 lines of context at the bottom



" === Command line completion ===
set wildmode=longest,list
set wildignore+=*.o,*.obj,.git



" === Go to file ===
let g:ctrlp_custom_ignore = '\.git$\|\.svn$\|\.hg$\|*\.o|*\.obj\|*\.jar\|doc\|vendor\|bin\|tags\|tmp\|lib\/old_plugins\|log\|.DS_Store$'
let g:ctrlp_lazy_update = 100

" MAP: Go to file
let g:ctrlp_map = '<Space>'


let g:syntastic_html_checkers = []


" === Searching in file ===
set incsearch   " Incremental
set smartcase   " Only be case-sensitive when searching with uppercase chars


" === Project-wide search (with ack) ===
set grepprg=ack
set grepformat=%f:%l:%m



" === Comment out code ===
" MAP: Toggle comments
xmap <Leader>c  <Plug>Commentary
nmap <Leader>c  <Plug>Commentary


" === Ctags
map <Leader>T :!ctags -R app lib<CR>



" === Setup Vundle ===
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-endwise'
Bundle 'jnwhiteh/vim-golang'
Bundle 'scrooloose/nerdtree'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-dispatch'

filetype plugin indent on
filetype on
colo jiro
syntax on

au BufRead,BufEnter *.c setl sw=8 sts=8 et
au BufRead,BufEnter *.rb setl sw=2 sts=2 et
au BufRead,BufEnter *.js setl sw=2 sts=2 et
au BufRead,BufEnter *.jsx setl ft=js sw=2 sts=2 et
au BufRead,BufEnter *.css setl sw=2 sts=2 et

au BufRead,BufEnter *.html setl ft=html sw=2 sts=2 et

au BufWritePre *.go Fmt
au BufRead,BufEnter *.go setl ft=go sw=8 sts=8 noet


" === Selecting methods ===
" MAP: vim, vam to visually select, but almost anything goes. Examples:
" cim: change method contents
" dam: delete whole method
" ,cim: comment out method contents

vmap im <Esc>[mjV]Mk
vmap am <Esc>[mV]M

omap im :normal vim<CR>
omap am :normal vam<CR>



" === Misc mappings ===
map s :w<CR>
map ! :!
map <Leader>r :!ruby %<CR>
map <Leader>g :!git 
map <Leader>/ :noh<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>m :Make<CR>
map <Leader>d :Dispatch 
map <Leader>J :tjump 
map <Leader>h <c-w>h
map <Leader>j <c-w>j
map <Leader>k <c-w>k
map <Leader>l <c-w>l
map <Leader>x :q<CR>
