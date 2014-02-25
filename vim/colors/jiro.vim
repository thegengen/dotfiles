hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "jiro"

if !has('gui_running')
  hi Normal       cterm=NONE           ctermbg=NONE   ctermfg=black
  hi SpecialKey   cterm=NONE           ctermbg=NONE   ctermfg=black
  hi IncSearch    cterm=NONE           ctermbg=NONE   ctermfg=cyan
  hi Search       cterm=reverse        ctermbg=NONE   ctermfg=black
  hi MoreMsg      cterm=NONE                          ctermfg=NONE
  hi ModeMsg      cterm=NONE                          ctermfg=NONE
  hi CursorLineNr cterm=bold           ctermbg=NONE   ctermfg=black
  hi LineNr       cterm=bold           ctermbg=NONE   ctermfg=darkgray
  hi StatusLine   cterm=reverse                       ctermfg=NONE
  hi StatusLineNC cterm=reverse                       ctermfg=NONE
  hi VertSplit    cterm=reverse                       ctermfg=NONE
  hi Title        cterm=NONE                          ctermfg=NONE
  hi Visual       cterm=reverse                       ctermfg=NONE
  hi VisualNOS    cterm=bold                          ctermfg=NONE
  hi WarningMsg   cterm=standout                      ctermfg=NONE
  hi WildMenu     cterm=standout                      ctermfg=NONE
  hi Folded       cterm=standout                      ctermfg=NONE
  hi FoldColumn   cterm=standout                      ctermfg=NONE
  hi DiffAdd      cterm=bold                          ctermfg=NONE
  hi DiffChange   cterm=bold                          ctermfg=NONE
  hi DiffDelete   cterm=bold                          ctermfg=NONE
  hi DiffText     cterm=reverse                       ctermfg=NONE
  hi Type         cterm=bold          ctermbg=NONE    ctermfg=none
  hi Keyword      cterm=None          ctermbg=NONE    ctermfg=NONE
  hi Number       cterm=None          ctermbg=NONE    ctermfg=NONE
  hi Char         cterm=None          ctermbg=NONE    ctermfg=NONE
  hi Format       cterm=None          ctermbg=NONE    ctermfg=NONE
  hi Special      cterm=None          ctermbg=NONE    ctermfg=NONE
  hi Constant     cterm=None          ctermbg=NONE    ctermfg=NONE
  hi PreProc      cterm=None                          ctermfg=NONE
  hi Directive    cterm=NONE          ctermbg=NONE    ctermfg=NONE
  hi Conditional  cterm=NONE          ctermbg=NONE    ctermfg=blue
  hi Comment      cterm=NONE          ctermbg=NONE    ctermfg=NONE
  hi Func         cterm=None          ctermbg=NONE    ctermfg=NONE
  hi Function     cterm=None          ctermbg=NONE    ctermfg=green
  hi Identifier   cterm=NONE          ctermbg=NONE    ctermfg=NONE
  hi Statement    cterm=NONE          ctermbg=NONE    ctermfg=blue
  hi Ignore       cterm=bold                          ctermfg=NONE
  hi String       term=underline                      ctermfg=NONE
  hi ErrorMsg     cterm=reverse       ctermbg=15      ctermfg=9
  hi Error        cterm=reverse       ctermbg=15      ctermfg=9
  hi Todo         cterm=NONE          ctermbg=NONE     ctermfg=red
  hi MatchParen   cterm=reverse       ctermbg=NONE     ctermfg=NONE
  hi ColorColumn                                      ctermbg=255
  hi Pmenu        cterm=reverse       ctermbg=NONE    ctermfg=NONE
  hi Pmenusel     cterm=reverse       ctermbg=NONE    ctermfg=blue
  hi Tabline      cterm=reverse       ctermbg=NONE    ctermfg=NONE
endif
