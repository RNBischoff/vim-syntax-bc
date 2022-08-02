" Quit when a syntax file was already loaded.
" test
if exists('b:current_syntax') | finish |  endif
"
"syn keyword bcKW fun 
syn match bcHeader "^.*---.*---$"
syn match bcBullet "^\s-\s.*$" contains=bcBracket
syn match bcBracket "<.*>"
syn match bcBulletPriority "^\s--\s.*$" contains=bcBracket
syn match bcComplete "^.*+\s.*$"
syn match bcSubPoint "^\s\s\s-\s.*$" 
syn region bcBracket start="<" end=">" 
syn match bcComment ".*#.*$"
"
"hi def link bcKW Todo 
hi def link bcHeader Underlined 
hi def link bcBullet Identifier
hi def link bcBulletPriority Constant
hi def link bcComplete Type 
hi def link bcSubPoint PreProc 
hi def link bcBracket Bracket
hi def link bcComment Comment
"
let b:current_syntax = 'bigcity'
" Comment      term=bold cterm=NONE ctermfg=DarkBlue ctermbg=NONE gui=NONE guifg=Blue guibg=NONE
" Constant     term=underline cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=Magenta guibg=NONE
" Special      term=bold cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=SlateBlue guibg=NONE
" Identifier   term=underline cterm=NONE ctermfg=DarkCyan ctermbg=NONE gui=NONE guifg=DarkCyan guibg=NONE
" Statement    term=bold cterm=NONE ctermfg=Brown ctermbg=NONE gui=bold guifg=Brown guibg=NONE
" PreProc      term=underline cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=Purple guibg=NONE
" Type         term=underline cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=bold guifg=SeaGreen guibg=NONE
" Ignore       term=NONE cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=bg guibg=NONE
hi Underlined  term=underline cterm=underline ctermfg=DarkRed gui=underline guifg=SlateBlue
hi Bracket term=NONE cterm=NONE ctermfg=Yellow gui=bold guifg=Yellow
hi Comment term=NONE cterm=NONE ctermfg=DarkGray gui=NONE guifg=DarkGray
