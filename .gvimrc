set guifont=Consolas\:h18

set guioptions-=e " don't use gui tab apperance
set guioptions-=T " hide toolbar
set guioptions-=r " don't show scrollbars
set guioptions-=l " don't show scrollbars
set guioptions-=R " don't show scrollbars
set guioptions-=L " don't show scrollbars
set guioptions+=c " use console dialog rather than popup dialog

"let g:peepopen_loaded = 1
"let g:peepopen_cwd = getcwd()

"function! s:LaunchPeepOpenViaVim()
" let cwd = g:peepopen_cwd
" silent exe "!open -a PeepOpen " . shellescape(cwd)
"endfunction

colorscheme solarized
set fuoptions=maxvert,maxhorz
set fullscreen
set bg=dark
