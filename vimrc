set nocp
set si
set ai
set et
set ts=2
set sw=2
set hidden
set ruler
set noswapfile
set number
set autowrite
set foldmethod=manual
let mapleader=","
set wildignore=*/_build/*,*/node_modules/*,*/coverage/*,*/doc/*,*/html/*,*/tmp/*,*/bin/*,*/vendor/*,tags,*.beam

execute pathogen#infect()
filetype on
filetype indent on
filetype plugin on


map <space> :CtrlP<CR>
map <leader>t :!ctags -R app<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>g :CtrlPTag<CR>
map <leader>s :w<CR>
map <leader>wj <c-w>j
map <leader>wk <c-w>k
map <leader>wx <c-w>x
map <leader>wc <c-w>c
map <leader>wc <c-w>c
map <leader>wo <c-w>o
map <leader>ws <c-w>s<c-w>j

map <leader>f :Ack 

" postgres
let g:sql_type_default = 'pgsql'

" highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace guibg=#bb3930
match ExtraWhitespace /\s\+$/

onoremap <silent> i/ :<C-U>normal! T/vt/<CR>
onoremap <silent> a/ :<C-U>normal! F/vf/<CR>
xnoremap <silent> i/ :<C-U>normal! T/vt/<CR>
xnoremap <silent> a/ :<C-U>normal! F/vf/<CR>
