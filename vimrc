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



" === Auto commands=
autocmd BufNewFile,BufRead *.haml setlocal cursorcolumn
autocmd BufNewFile,BufRead *.coffee setlocal cursorcolumn
autocmd BufNewFile,BufWrite * setlocal relativenumber


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










" === Autocompletion ===
set pumheight=10
let g:acp_completeoptPreview = 0
let g:acp_behaviorKeywordLength = 5 " set it reasonably high so it doesn't intrude
let g:acp_behaviorKeywordIgnores = ['if','end','class','module', 'do', 'self', 'false']
let g:acp_behaviorRubyOmniLength = 5
let g:acp_ignoreCaseOption = 0
let g:acp_completeOption = '.,w,b,t'

" MAP: Tab and Shift-Tab will scroll up and down in the autocompletion menu
inoremap <expr><tab> pumvisible()?"<down>":"<tab>"
inoremap <expr><s-tab> pumvisible()?"<up>":"<s-tab>"



" === Go to tag ===
" MAP: Go to tag
autocmd BufRead,BufWrite *.rb silent !ctags -R --exclude="app/models/*/api.rb" --exclude="lib/old_plugins/*" --exclude="**/*.haml" --exclude="**/*.js" lib app/*/*.rb 2>/dev/null
map ; :tjump 



" === Go to file ===
let g:ctrlp_custom_ignore = '\.git$\|\.svn$\|\.hg$\|*\.o|*\.obj\|*\.jar\|vendor\|bin\|tags\|tmp\|log\|.DS_Store$'
let g:ctrlp_lazy_update = 1

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

" MAP: search. go forward and back in the results
map <Leader>f :grep 
map <Leader>F :grep <cword><CR>
map <Leader>n :silent cnext<CR>
map <Leader>p :silent cprev<CR>



" === Comment out code ===
" MAP: Toggle comments
xmap <Leader>c  <Plug>Commentary
nmap <Leader>c  <Plug>Commentary



" === Paste mode ===
" MAP: Toggle paste mode
set pastetoggle=<Leader>P



" === Working with alternate files ===
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

" MAP: Open alternate file
map <Leader>a :call OpenAlternate()<CR>

" MAP: Run test
map <Leader>t :call RunTest()<CR>
map <Leader>T :!rake<CR>
