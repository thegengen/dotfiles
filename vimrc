" .vimrc file
" (C) 2012 Eugen Minciu

" === Basic Behavior ===
" The absolute requirements for a decent vim session
set nocp              " Disable vi compatibility
let mapleader=","     " Most keymappings use this. Better than \
set directory=/tmp/   " Don't bleed swap files all over the place
filetype on           " Enable plugins and syntax highlighting
filetype plugin on
syntax on
set autoread          " Reload external file changes on the fly
set shortmess=atI     " Stop with all the annoying prompts.
set history=1000      " give us a proper amount of history



" === Indentation ===
" These settings make sense for editing Ruby, HAML and CoffeeScript.
" I should turn them into autocommands when the time comes.
filetype indent on
set ai
set si
set expandtab
set softtabstop=2
set shiftwidth=2



" === Display options ===
set relativenumber
set novisualbell
set nocursorline
set nowrap
" color settings
set bg=dark
colorscheme minciue-base16



" === Status line ===
set laststatus=2
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set ruler             " display line and col no in the ruler



" === Advanced Behavior ===
set hidden            " keep previous buffers open
set autowrite         " but save them when running commands or leaving them
set scrolloff=5       " always keep 5 lines of context at the bottom



" === Command line completion ===
set wildmode=longest,list
set wildignore+=*.o,*.obj,.git



" === Load plugin bundles ===
" To add any plugin, just clone it to ~/.vim/bundle
call pathogen#infect()



" === Go to file ===
let g:ctrlp_custom_ignore = '\.git$\|\.svn$\|\.hg$\|*\.o|*\.obj\|*\.jar\|vendor\|bin\|tags\|tmp\|lib\/old_plugins\|log\|.DS_Store$'
let g:ctrlp_lazy_update = 100

" MAP: Go to file
let g:ctrlp_map = '<Space>'



" === Misc mappings ===
" MAP: Save file
map s <ESC>:w<CR>

" === Selecting methods ===
" MAP: vim, vam to visually select, but almost anything goes. Examples:
" cim: change method contents
" dam: delete whole method
" ,cim: comment out method contents

vmap im <Esc>[mjV]Mk
vmap am <Esc>[mV]M

omap im :normal vim<CR>
omap am :normal vam<CR>

" === Searching in file ===
set incsearch   " Incremental
set hlsearch    " Highlight results
set smartcase   " Only be case-sensitive when searching with uppercase chars

" MAP: Clear highlighting of results
map <Leader>/ :nohlsearch<CR>



" === Project-wide search (with ack) ===
set grepprg=ack
set grepformat=%f:%l:%m



" === Comment out code ===
" MAP: Toggle comments
xmap <Leader>c  <Plug>Commentary
nmap <Leader>c  <Plug>Commentary


" === Ctags
map <Leader>t :!ctags -R app lib<CR>



" === Setup Vundle ===
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'tpope/vim-commentary.git'
Bundle 'tpope/vim-haml'
Bundle 'groenewege/vim-less'
Bundle 'kchmck/vim-coffee-script'
Bundle 'avsm/ocaml-annot'

syntax enable
filetype plugin indent on
