hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "jiro"

hi Normal       guibg=white   guifg=#33322d
hi NonText      guibg=NONE    guifg=NONE
hi ModeMsg      guibg=NONE    guifg=NONE       gui=NONE
hi CursorLine   guibg=NONE    guifg=NONE       gui=NONE
hi CursorColumn guibg=NONE    guifg=NONE       gui=NONE
hi FoldColumn   guibg=white    guifg=NONE       gui=NONE
hi Folded       guibg=white    guifg=NONE       gui=NONE
hi SignColumn   guibg=white    guifg=NONE       gui=NONE
hi SpecialKey   guibg=NONE    guifg=NONE
hi IncSearch    guibg=#f7e4ac guifg=#33322d    gui=BOLD
hi Search       guibg=#f7e4ac guifg=#33322d    gui=NONE
hi LineNr       guibg=NONE    guifg=darkgray
hi StatusLine   guibg=#16518c guifg=white      gui=NONE
hi Directory    guibg=NONE    guifg=#16518c    gui=NONE
hi Visual       guibg=#505050 guifg=white
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
hi Error        guifg=white   guibg=#bb3930    gui=BOLD
hi Todo         guibg=white   guifg=#bb3930    gui=BOLD
hi MatchParen   guibg=NONE    guifg=#e2a412
hi Pmenu        guibg=#505050 guifg=white      gui=NONE
hi Pmenusel     guibg=#16518c guifg=white      gui=NONE
hi Tabline      guibg=#505050 guifg=white      gui=NONE
hi TablineSel   guibg=white   guifg=#bb3930    gui=BOLD
hi TablineFill  guibg=#505050 guifg=NONE       gui=NONE
hi DiffAdd      guibg=#4b7627 guifg=white
hi DiffDelete   guibg=#bb3930 guifg=white

" Tell other syntax files to get off my lawn
hi Title        guibg=NONE    guifg=NONE
hi ExtraWhitespace guibg=#bb3930 guifg=white  gui=NONE
