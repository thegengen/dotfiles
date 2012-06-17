set guifont=Terminus
set guioptions-=T " hide toolbar
set guioptions-=m " don't show menu
set guioptions-=r " don't show scrollbars
set guioptions-=l " don't show scrollbars
set guioptions-=R " don't show scrollbars
set guioptions-=L " don't show scrollbars
set guioptions+=c " use console dialog rather than popup dialog

set bg=dark

" writing plain text: 2 shortcuts
map <Leader>w :set textwidth=78<CR>:set nosi<CR>:set noai<CR>:set sts=4<CR>:set guifont=Courier\ 16<CR>:colo Tomorrow<CR>:hi LineNr guifg=#ffffff<CR>:set linespace=20<CR>
