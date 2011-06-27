set guifont=Consolas\:h18
let g:peepopen_loaded = 1
let g:peepopen_cwd = getcwd()

function! s:LaunchPeepOpenViaVim()
 let cwd = g:peepopen_cwd
 silent exe "!open -a PeepOpen " . shellescape(cwd)
endfunction

colorscheme solarized
set fuoptions=maxvert,maxhorz
set fullscreen
set bg=dark
