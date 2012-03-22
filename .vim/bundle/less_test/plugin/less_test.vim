" Vim plugin for running ruby tests in a separate terminal.
" To be used in conjunction with the less_test gem
" Based on the rubytest vim plugin ( ) (C) Jan <jan.h.xie@gmail.com>
"
" Last Change: Jun 17 2011
" Maintainer: Eugen Minciu <eugen@lesseverything.com>
" License: MIT License

if exists("less_test_loaded")
  finish
endif
let less_test_loaded = 1

if !exists("g:less_test_tmp_file")
  let g:less_test_tmp_file = "tmp/testcmd"
end

if !exists("g:less_test_spec_drb")
  let g:less_test_spec_drb = 0
endif
if !exists("g:less_test_cmd_test")
  let g:less_test_cmd_test = "ruby %p"
endif
if !exists("g:less_test_cmd_testcase")
  let g:less_test_cmd_testcase = "ruby %p -n '/%c/'"
endif
if !exists("g:less_test_cmd_spec")
  let g:less_test_cmd_spec = "rspec %p"
endif
if !exists("g:less_test_cmd_example")
  let g:less_test_cmd_example = "rspec %p -l %c"
endif
if !exists("g:less_test_cmd_feature")
  let g:less_test_cmd_feature = "cucumber %p"
endif
if !exists("g:less_test_cmd_story")
  let g:less_test_cmd_story = "cucumber %p -n '%c'"
endif

function s:FindCase(patterns)
  let ln = a:firstline
  while ln > 0
    let line = getline(ln)
    for pattern in keys(a:patterns)
      if line =~ pattern
        if s:pattern == 'spec'
          return a:patterns[pattern](ln)
        else
          return a:patterns[pattern](line)
        endif
      endif
    endfor
    let ln -= 1
  endwhile
  return 'false'
endfunction

function s:EscapeBackSlash(str)
  return substitute(a:str, '\', '\\\\', 'g')
endfunction

function s:ExecTest(cmd)
  "silent exe "!echo '" . a:cmd . "' && " . a:cmd
  silent exe "!echo " . "\"" . a:cmd . "\" > " . g:less_test_tmp_file
  redraw!
endfunction

function s:RunTest()
  if s:test_scope == 1
    let cmd = g:less_test_cmd_testcase
  elseif s:test_scope == 2
    let cmd = g:less_test_cmd_test
  end

  let case = s:FindCase(s:test_case_patterns['test'])
  if s:test_scope == 2 || case != 'false'
    let case = substitute(case, "'\\|\"", '.', 'g')
    let cmd = substitute(cmd, '%c', case, '')
    let cmd = substitute(cmd, '%p', s:EscapeBackSlash(@%), '')

    if @% =~ '^test'
      let cmd = substitute(cmd, '^ruby ', 'ruby -Itest ', '')
    endif

    call s:ExecTest(cmd)
  else
    echo 'No test case found.'
  endif
endfunction

function s:RunSpec()
  if s:test_scope == 1
    let cmd = g:less_test_cmd_example
  elseif s:test_scope == 2
    let cmd = g:less_test_cmd_spec
  endif

  if g:less_test_spec_drb > 0
    let cmd = cmd . " --drb"
  endif

  let case = s:FindCase(s:test_case_patterns['spec'])
  if s:test_scope == 2 || case != 'false'
    let cmd = substitute(cmd, '%c', case, '')
    let cmd = substitute(cmd, '%p', s:EscapeBackSlash(@%), '')
    call s:ExecTest(cmd)
  else
    echo 'No spec found.'
  endif
endfunction

function s:RunFeature()
  let s:old_in_quickfix = g:less_test_in_quickfix
  let g:less_test_in_quickfix = 0

  if s:test_scope == 1
    let cmd = g:less_test_cmd_story
  elseif s:test_scope == 2
    let cmd = g:less_test_cmd_feature
  endif

  let case = s:FindCase(s:test_case_patterns['feature'])
  if s:test_scope == 2 || case != 'false'
    let cmd = substitute(cmd, '%c', case, '')
    let cmd = substitute(cmd, '%p', s:EscapeBackSlash(@%), '')
    call s:ExecTest(cmd)
  else
    echo 'No story found.'
  endif

  let g:less_test_in_quickfix = s:old_in_quickfix
endfunction

let s:test_patterns = {}
let s:test_patterns['test'] = function('s:RunTest')
let s:test_patterns['spec'] = function('s:RunSpec')
let s:test_patterns['\.feature$'] = function('s:RunFeature')

function s:GetTestCaseName1(str)
  return split(a:str)[1]
endfunction

function s:GetTestCaseName2(str)
  return "test_" . join(split(split(a:str, '"')[1]), '_')
endfunction

function s:GetTestCaseName3(str)
  return split(a:str, '"')[1]
endfunction

function s:GetTestCaseName4(str)
  return "test_" . join(split(split(a:str, "'")[1]), '_')
endfunction

function s:GetTestCaseName5(str)
  return split(a:str, "'")[1]
endfunction

function s:GetSpecLine(str)
  return a:str
endfunction

function s:GetStoryLine(str)
  return join(split(split(a:str, "Scenario:")[1]))
endfunction

let s:test_case_patterns = {}
let s:test_case_patterns['test'] = {'^\s*def test':function('s:GetTestCaseName1'), '^\s*test \s*"':function('s:GetTestCaseName2'), "^\\s*test \\s*'":function('s:GetTestCaseName4'), '^\s*should \s*"':function('s:GetTestCaseName3'), "^\\s*should \\s*'":function('s:GetTestCaseName5'), '^\s*context \s*"':function('s:GetTestCaseName3')}
let s:test_case_patterns['spec'] = {'^\s*\(it\|example\|describe\|context\) \s*':function('s:GetSpecLine')}
let s:test_case_patterns['feature'] = {'^\s*Scenario:':function('s:GetStoryLine')}

let s:save_cpo = &cpo
set cpo&vim

function s:IsRubyTest()
  for pattern in keys(s:test_patterns)
    if @% =~ pattern
      let s:pattern = pattern
      return 1
    endif
  endfor
endfunction

function s:Run(scope)
  if !s:IsRubyTest()
    echo "This file doesn't contain ruby test."
  else
    " test scope define what to test
    " 1: test case under cursor
    " 2: all tests in file
    let s:test_scope = a:scope
    call s:test_patterns[s:pattern]()
  endif
endfunction

function s:RunLast()
  silent exe "!touch " . g:less_test_tmp_file
  redraw!
endfunction

noremap <unique> <script> <Plug>RubyTestRun <SID>Run
noremap <unique> <script> <Plug>RubyFileRun <SID>RunFile
noremap <unique> <script> <Plug>RubyTestRunLast <SID>RunLast

map <unique> <Leader>r :call <SID>Run(1)<CR>
map <unique> <Leader>R :call <SID>Run(2)<CR>
map <unique> <Leader>l :call <SID>RunLast()<CR>

let &cpo = s:save_cpo
