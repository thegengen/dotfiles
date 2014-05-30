" .vimrc file
" (C) 2012 Eugen Minciu

" === Basic Behavior ===
" The absolute requirements for a decent vim session
set nocp              " Disable vi compatibility
let mapleader=","     " Most keymappings use this. Better than \
set noswapfile        " Don't bleed swap files all over the place
set autoread          " Reload external file changes on the fly
set shortmess=atI     " Stop with all the annoying prompts.
set history=1000      " give us a proper amount of history

" === Indentation ===
set autoindent
set expandtab

" === Display options ===
set novisualbell
set cursorline
set hlsearch
set number

" === Tab line ===
set guitablabel=%t\ (%N)



" === Advanced Behavior ===
set hidden            " keep previous buffers open
set autowrite         " but save them when running commands or leaving them
set scrolloff=10      " always keep 10 lines of context at the bottom

" === Command line completion ===
set wildmode=longest,list
set wildignore+=*.jpg,*.o,*.obj,.git,*.jpg,*.png,*.gif,*.log,*.mp4,*.mov,tags$,.DS_Store,tmp

let g:ctrlp_custom_ignore = '\.git$\|\.svn$\|\.hg$\|*\.o|*\.obj\|*\.jar\|doc\|vendor\|bin\|tags\|tmp\|lib\/old_plugins\|.DS_Store$'
" let g:ctrlp_by_filename = 1

let g:syntastic_html_checkers = []

" === Searching in file ===
set incsearch   " Incremental
set smartcase   " Only be case-sensitive when searching with uppercase chars

" === Setup Vundle ===
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-dispatch'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set completeopt-=preview
function! MyTagContext()
  if filereadable(expand('%:p:h') . '/tags')
    return "\<c-x>\<c-]>"
  endif
  " no return will result in the evaluation of the next
  " configured context
endfunction
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['MyTagContext', 's:ContextText', 's:ContextDiscover']

colo jiro
syntax on

au BufRead,BufEnter *.c setl sw=8 sts=8 et
au BufRead,BufEnter *.rb setl sw=2 sts=2 et
au BufRead,BufEnter *.js setl sw=2 sts=2 et
au BufRead,BufEnter *.jsx setl ft=js sw=2 sts=2 et
au BufRead,BufEnter *.css setl sw=2 sts=2 et

au BufRead,BufEnter *.html setl ft=html sw=2 sts=2 et
au BufRead,BufEnter *.go map <buffer> <c-]> :silent GoDef<CR>

" === Misc mappings ===
map ! :!

map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt

map <space>   :CtrlP<CR>
map <s-space> :NERDTree<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>t :CtrlPTag<CR>

map <leader>f :Ack 
map <leader>F :Ack <cword><CR>
map <leader>n :cn<CR>
map <leader>N :cN<CR>

map <Leader>h <c-w>h
map <Leader>j <c-w>j
map <Leader>k <c-w>k
map <Leader>l <c-w>l
map <Leader>x :q<CR>
map <Leader>o <c-w>o

map <Leader>/ :noh<CR>

map <Leader>d :Dispatch 

map <Leader>it :!ctags -R app lib<CR>
map <Leader>ir :!ripper-tags -R app lib<CR>
