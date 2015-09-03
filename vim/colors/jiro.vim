hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "jiro"

hi Normal       cterm=NONE           ctermbg=NONE   ctermfg=black      guibg=white guifg=#272d2f
hi SpecialKey   cterm=NONE           ctermbg=NONE   ctermfg=black      guibg=NONE  guifg=#272d2f
hi IncSearch    cterm=NONE           ctermbg=NONE   ctermfg=cyan       guibg=NONE  guifg=#377f83
hi Search       cterm=reverse        ctermbg=NONE   ctermfg=black      guibg=NONE  guifg=#377f83
hi MoreMsg      cterm=NONE                          ctermfg=NONE
hi ModeMsg      cterm=NONE                          ctermfg=NONE
hi CursorLineNr cterm=bold           ctermbg=NONE   ctermfg=black      guibg=NONE  guifg=#272d2f
hi LineNr       cterm=bold           ctermbg=NONE   ctermfg=darkgray   guibg=NONE  guifg=darkgray
hi StatusLine   cterm=reverse                       ctermfg=NONE       guibg=NONE  guifg=#272d2f
hi StatusLineNC cterm=reverse                       ctermfg=NONE
hi VertSplit    cterm=reverse                       ctermfg=NONE
hi Title        cterm=NONE                          ctermfg=NONE
hi Visual       cterm=reverse                       ctermfg=NONE       guibg=#272d2f guifg=white
hi VisualNOS    cterm=bold                          ctermfg=NONE
hi WarningMsg   cterm=standout                      ctermfg=NONE
hi WildMenu     cterm=standout                      ctermfg=NONE
hi Folded       cterm=standout                      ctermfg=NONE
hi FoldColumn   cterm=standout                      ctermfg=NONE
hi DiffAdd      cterm=bold                          ctermfg=NONE
hi DiffChange   cterm=bold                          ctermfg=NONE
hi DiffDelete   cterm=bold                          ctermfg=NONE
hi DiffText     cterm=reverse                       ctermfg=NONE
hi Type         cterm=bold          ctermbg=NONE    ctermfg=NONE       gui=bold guibg=NONE guifg=NONE
hi Keyword      cterm=None          ctermbg=NONE    ctermfg=NONE       guibg=NONE guifg=#16518c
hi Number       cterm=None          ctermbg=NONE    ctermfg=NONE       guibg=NONE guifg=NONE
hi Char         cterm=None          ctermbg=NONE    ctermfg=NONE       guibg=NONE guifg=NONE
hi Format       cterm=None          ctermbg=NONE    ctermfg=NONE       guibg=NONE guifg=NONE
hi Special      cterm=None          ctermbg=NONE    ctermfg=NONE       guibg=NONE guifg=NONE
hi Constant     cterm=None          ctermbg=NONE    ctermfg=NONE       guibg=NONE guifg=NONE
hi PreProc      cterm=None                          ctermfg=NONE                  guifg=NONE
hi Directive    cterm=NONE          ctermbg=NONE    ctermfg=NONE       guibg=NONE guifg=NONE
hi Conditional  cterm=NONE          ctermbg=NONE    ctermfg=blue   guibg=NONE guifg=#16518c
hi Comment      cterm=NONE          ctermbg=NONE    ctermfg=NONE   guibg=NONE guifg=#777777
hi Func         cterm=None          ctermbg=NONE    ctermfg=NONE   guibg=NONE guifg=NONE
hi Function     cterm=None          ctermbg=NONE    ctermfg=green  guibg=NONE guifg=#4b7627
hi Identifier   cterm=NONE          ctermbg=NONE    ctermfg=NONE   guibg=NONE guifg=NONE
hi Statement    cterm=NONE          ctermbg=NONE    ctermfg=blue   guibg=NONE guifg=#16518c
hi Ignore       cterm=bold                          ctermfg=NONE   gui=BOLD guifg=NONE
hi String       term=NONE                           ctermfg=NONE   gui=NONE
hi ErrorMsg     cterm=reverse       ctermbg=15      ctermfg=9      guibg=#bb3930 guifg=white
hi Error        cterm=reverse       ctermbg=15      ctermfg=9      guibg=#bb3930 guifg=white
hi Todo         cterm=NONE          ctermbg=NONE     ctermfg=red   guibg=NONE    guifg=#bb3930
hi MatchParen   cterm=reverse       ctermbg=NONE     ctermfg=NONE  guibg=NONE    guifg=#e2a412
hi ColorColumn                                      ctermbg=255
hi Pmenu        cterm=reverse       ctermbg=NONE    ctermfg=NONE   gui=REVERSE guibg=NONE    guifg=NONE
hi Pmenusel     cterm=reverse       ctermbg=NONE    ctermfg=blue   gui=REVERSE guibg=NONE    guifg=#16518c
hi Tabline      cterm=reverse       ctermbg=NONE    ctermfg=NONE   gui=reverse guibg=NONE    guifg=NONE
