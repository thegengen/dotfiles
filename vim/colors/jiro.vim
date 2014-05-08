hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "jiro"

hi Normal       guibg=white   guifg=#33322d
hi NonText      guibg=NONE    guifg=NONE
hi CursorLine   guibg=NONE    guifg=NONE       gui=REVERSE
hi SpecialKey   guibg=NONE    guifg=NONE
hi IncSearch    guibg=NONE    guifg=#e2a412    gui=NONE
hi Search       guibg=NONE    guifg=#e2a412    gui=NONE
hi LineNr       guibg=NONE    guifg=darkgray
hi StatusLine   guibg=white   guifg=#404040
hi Visual       guibg=#404040 guifg=white
hi Type         guibg=NONE    guifg=NONE       gui=NONE
hi Keyword      guibg=NONE    guifg=NONE
hi Number       guibg=NONE    guifg=NONE
hi Char         guibg=NONE    guifg=NONE
hi Format       guibg=NONE    guifg=NONE
hi Special      guibg=NONE    guifg=NONE
hi Constant     guibg=NONE    guifg=NONE
hi PreProc      guifg=NONE    guibg=NONE
hi Directive    guibg=NONE    guifg=NONE
hi Conditional  guibg=NONE    guifg=#16518c    gui=BOLD
hi Comment      guibg=NONE    guifg=NONE
hi Func         guibg=NONE    guifg=NONE
hi Function     guibg=NONE    guifg=#4b7627    gui=BOLD
hi Identifier   guibg=NONE    guifg=NONE
hi Statement    guibg=NONE    guifg=#16518c    gui=BOLD
hi Ignore       guibg=NONE    guifg=NONE       gui=BOLD
hi String                                      gui=NONE
hi ErrorMsg     guibg=#bb3930 guifg=white
hi Error        guibg=#bb3930 guifg=white
hi Todo         guibg=white   guifg=#bb3930    gui=REVERSE
hi MatchParen   guibg=NONE    guifg=#e2a412
hi Pmenu        guibg=NONE    guifg=NONE       gui=REVERSE
hi Pmenusel     guibg=#e2a412 guifg=NONE       gui=REVERSE
hi Tabline      guibg=#404040 guifg=white      gui=NONE
hi TablineFill  guibg=#404040 guifg=NONE       gui=NONE
hi ExtraWhitespace guibg=#bb3930 guifg=white  gui=NONE

" Tell other syntax files to get off my lawn
hi Title        guibg=NONE    guifg=NONE
hi ExtraWhitespace guibg=#bb3930 guifg=white
