" .vimrc file

" (C) 2012 Eugen Minciu

" === Basic Settings ===
set nocp
set number
set incsearch
set hlsearch
set smartcase
set ruler
set wildmode=list:longest,full
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
set colorcolumn=100
set scrolloff=10
set shortmess=atI
set autowrite
call pathogen#infect()

" color settings
set bg=light
colorscheme minciue

" === Plugin Settings ===
" autocomplpop
let g:acp_completeoptPreview = 0
let g:acp_behaviorKeywordLength = 5
let g:acp_behaviorKeywordIgnores = ['if','end','class','module', 'do', 'self']
let g:acp_behaviorRubyOmniLength = 5
let g:acp_ignoreCaseOption = 0
let g:acp_completeOption = '.,w,b,t'

inoremap <expr><tab> pumvisible()?"<down>":"<tab>"
inoremap <expr><s-tab> pumvisible()?"<up>":"<s-tab>"

"ctrlp
let g:ctrlp_custom_ignore = '\.git$\|\.svn$\|\.hg$\|*\.o|*\.obj\|*\.jar\|vendor\|bin\|tags\|tmp\|log\|.DS_Store$'
let g:ctrlp_lazy_update = 1

"vim-rubytest
let g:rubytest_cmd_test = "bundle exec ruby %p"
let g:rubytest_cmd_testcase = "bundle exec ruby %p -n '/%c/'"
" auto commands
autocmd BufRead,BufWrite *.rb silent !ctags -R --exclude="app/models/*/api.rb" --exclude="**/*.haml" --exclude="**/*.js" lib app/*/*.rb 2>/dev/null
autocmd BufNewFile,BufRead *.haml setlocal cursorcolumn 
autocmd BufNewFile,BufRead *.coffee setlocal cursorcolumn

" === Shorcuts ===

" tags: 1 shortcut
map ; :tjump 

" remove search highlighting
map <Leader>/ :nohlsearch<CR>

" shift-enter to move to the next line
imap <S-Enter> <Esc>o

" grep: 4 shortcuts
map <Leader>f :Ack 
map <Leader>F :Ack <cword> 
map <Leader>n :silent cnext<CR>
map <Leader>p :silent cprev<CR>

" commentary: 2 shortcuts
xmap <Leader>c  <Plug>Commentary
nmap <Leader>c  <Plug>Commentary
xmap <Leader>C  <Plug>CommentaryUndo
nmap <Leader>C  <Plug>CommentaryUndo

" ctrlp: 1 shortcuts
map <Space> :CtrlP<CR>

" save: 1 shortcut
map s <ESC>:w<CR>

" window navigaton: 1 shortcut
map <Leader>w <C-w>

" open alternate file: 1 shortcut
function! AlternateFile()
  let path = expand("%")
  let new_path = ''
  if !empty(matchstr(path, "app/models/"))
    let new_path = substitute(path, "app/models", "test/unit", "")
    let new_path = substitute(new_path, ".rb", "_test.rb", "")
  elseif !empty(matchstr(path, "test/unit/"))
    let new_path =substitute(path, "test/unit", "app/models", "")
    let new_path = substitute(new_path, "_test.rb", ".rb", "")
  elseif !empty(matchstr(path, "app/controllers/"))
    let new_path =substitute(path, "app/controllers", "test/functional", "")
    let new_path = substitute(new_path, ".rb", "_test.rb", "")
  elseif !empty(matchstr(path, "test/functional/"))
    let new_path =substitute(path, "test/functional", "app/controllers", "")
    let new_path = substitute(new_path, "_test.rb", ".rb", "")
  elseif !empty(matchstr(path, "lib/"))
    let new_path = substitute(path,"lib","test", "")
    let new_path = substitute(new_path, ".rb", "_test.rb", "")
  elseif !empty(matchstr(path, "test/"))
    let new_path = substitute(path, "test", "lib", "")
    let new_path = substitute(new_path, "_test.rb", ".rb", "")
  endif
  return new_path
endfunction

function! RunTest()
  let path = expand("%")
  if empty(matchstr(path, "_test.rb"))
    let path = AlternateFile()
  end
  if empty(path)
    :echo 'No test file.'
  else
    :exe ':!ruby ' . path
  endif
endfunction

function! OpenAlternate()
  let new_path = AlternateFile()
  if !empty(new_path)
    :exe ':e ' . new_path
  end
endfunction

map <Leader>a :call OpenAlternate()<CR>
map <Leader>t :call RunTest()<CR>
map <Leader>T :!rake<CR>

" working with methods
vmap im <Esc>[mjV]Mk
vmap am <Esc>[mV]M

omap im :normal vim<CR>
omap am :normal vam<CR>

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
