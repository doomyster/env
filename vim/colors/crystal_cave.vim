set background=dark
hi clear          

let g:colors_name = "crystal_cave"

if exists("syntax_on")
	syntax reset
endif


hi Constant		ctermfg=82		ctermbg=none	cterm=none
hi link String		Constant
hi link cString		Constant
hi link Character	Constant
hi link Number		Constant
hi link cNumber		Constant
hi link Boolean		Constant
hi link cppBoolean	Constant
hi link Float		Constant
hi link cFloat		Constant
hi Special		ctermfg=48		ctermbg=none	cterm=bold
hi link cSpecial	Special

hi Type			ctermfg=154		ctermbg=none	cterm=bold

hi Statement		ctermfg=11		ctermbg=none	cterm=bold
hi link cStatement	Statement
hi link Operator	Statement

" Define two commands to set comments to be rather dark, and rather visible. Then call one of these two commands.
command HiComments hi Comment ctermfg=51  ctermbg=none cterm=none | hi link cComment Comment
command LoComments hi Comment ctermfg=247 ctermbg=none cterm=none | hi link cComment Comment
LoComments

hi PreProc		ctermfg=45		ctermbg=none	cterm=none
hi link cIncluded	PreProc

hi NonText		ctermfg=240		ctermbg=none	cterm=none
hi SpecialKey		ctermfg=240		ctermbg=none	cterm=none

hi SpellBad		ctermfg=none		ctermbg=52	cterm=underline
hi SpellCap		ctermfg=none		ctermbg=19	cterm=underline
hi link SpellRare	SpellBad
hi link SpellLocal	SpellCap


hi Visual		ctermfg=none		ctermbg=235	cterm=none
hi Pmenu		ctermfg=none		ctermbg=19	cterm=none
hi PmenuSel		ctermfg=172		ctermbg=52	cterm=none

hi TabLineFill		ctermfg=none		ctermbg=19	cterm=none
hi TabLineSel		ctermfg=172		ctermbg=52	cterm=none
hi TabLine		ctermfg=none		ctermbg=19	cterm=none

hi StatusLine 		ctermfg=none		ctermbg=19	cterm=none
au InsertEnter * hi StatusLine ctermfg=none	ctermbg=52	cterm=none
au InsertLeave * hi StatusLine ctermfg=none	ctermbg=19	cterm=none

hi DiffAdd		ctermfg=none		ctermbg=22	cterm=bold
hi DiffChange		ctermfg=none		ctermbg=19	cterm=none
hi DiffDelete		ctermfg=51		ctermbg=32	cterm=none
hi DiffText		ctermfg=none		ctermbg=88	cterm=bold

hi Folded		ctermfg=51		ctermbg=54	cterm=none

hi Todo			ctermfg=9		ctermbg=none	cterm=underline,bold



"hi Boolean         ctermfg=181 cterm=bold
"hi Character       ctermfg=181 cterm=bold
"hi Comment         ctermfg=8
"hi Condtional      ctermfg=123
"hi Constant        ctermfg=181 cterm=bold
"hi Cursor          ctermfg=0 ctermbg=145
"hi Debug           ctermfg=181 cterm=bold
"hi Define          ctermfg=223 cterm=bold
"hi Delimiter       ctermfg=245
"hi DiffAdd         ctermbg=239
"hi DiffChange      ctermbg=236
"hi DiffDelete      ctermfg=236 ctermbg=238 cterm=none
"hi DiffText        ctermfg=15 ctermbg=234 cterm=bold
"hi Directory       ctermfg=15 cterm=bold
"hi Error           ctermfg=0 ctermbg=14
"hi ErrorMsg        ctermfg=0 ctermbg=6
"hi Exception       ctermfg=123 cterm=underline
"hi Float           ctermfg=139
"hi FoldColumn      ctermfg=181 ctermbg=238
"hi Folded          ctermfg=181 ctermbg=236
"hi Function        ctermfg=228
"hi Identifier      ctermfg=15
"hi Include         ctermfg=223 cterm=bold
"hi IncSearch       ctermfg=0 ctermbg=131
"hi Keyword         ctermfg=15 cterm=bold
"hi Label           ctermfg=123 cterm=underline
"hi LineNr          ctermfg=8 ctermbg=238
"hi Macro           ctermfg=223 cterm=bold
"hi ModeMsg         ctermfg=181 cterm=bold
"hi MoreMsg         ctermfg=15 cterm=bold
"hi NonText         ctermfg=234
"hi Normal          ctermfg=252 ctermbg=237
"hi Number          ctermfg=248
"hi Operator        ctermfg=15
"hi PreCondit       ctermfg=180 cterm=bold
"hi PreProc         ctermfg=223 cterm=bold
"hi Question        ctermfg=15 cterm=bold
"hi Repeat          ctermfg=123 cterm=underline
"hi Search          ctermfg=0 ctermbg=131
"hi SpecialChar     ctermfg=181 cterm=bold
"hi SpecialComment  ctermfg=181 cterm=bold
"hi Special         ctermfg=8
"hi SpecialKey      ctermfg=8
"hi Statement       ctermfg=123
"hi StatusLine      ctermfg=236 ctermbg=210
"hi StatusLineNC    ctermfg=236 ctermbg=252
"hi StorageClass    ctermfg=15 cterm=bold
"hi String          ctermfg=174
"hi Structure       ctermfg=15 cterm=bold,underline
"hi Tag             ctermfg=181 cterm=bold
"hi Title           ctermfg=15 ctermbg=236 cterm=bold
"hi Todo            ctermfg=15 ctermbg=0 cterm=bold
"hi Typedef         ctermfg=15 cterm=bold,underline
"hi Type            ctermfg=15 cterm=bold
"hi VertSplit       ctermfg=236 ctermbg=252
"hi Visual          ctermfg=236 ctermbg=210 cterm=reverse
"hi VisualNOS       ctermfg=236 ctermbg=210 cterm=bold,underline
"hi WarningMsg      ctermfg=15 ctermbg=236 cterm=bold
"hi WildMenu        ctermfg=0 ctermbg=181
