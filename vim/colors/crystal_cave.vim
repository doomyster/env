set background=dark
hi clear

let g:colors_name = "crystal_cave"

if exists("syntax_on")
	syntax reset
endif


hi Constant             ctermfg=82              ctermbg=none    cterm=none
hi link String          Constant
hi link cString         Constant
hi link Character       Constant
hi link Number          Constant
hi link cNumber         Constant
hi link Boolean         Constant
hi link cppBoolean      Constant
hi link Float           Constant
hi link cFloat          Constant
hi Special              ctermfg=48              ctermbg=none    cterm=bold
hi link cSpecial        Special

hi Type                 ctermfg=154             ctermbg=none    cterm=bold

hi Statement            ctermfg=11              ctermbg=none    cterm=bold
hi link cStatement      Statement
hi link Operator        Statement

hi Function             ctermfg=51              ctermbg=none    cterm=bold

" Define two commands to set comments to be rather dark, and rather visible. Then call one of these two commands.
command HiComments hi Comment ctermfg=51  ctermbg=none cterm=none | hi link cComment Comment
command LoComments hi Comment ctermfg=247 ctermbg=none cterm=none | hi link cComment Comment
LoComments

hi PreProc              ctermfg=45              ctermbg=none    cterm=none
hi link cIncluded       PreProc

hi NonText              ctermfg=240             ctermbg=none    cterm=none
hi SpecialKey           ctermfg=240             ctermbg=none    cterm=none

hi SpellBad             ctermfg=none            ctermbg=52      cterm=underline
hi SpellCap             ctermfg=none            ctermbg=19      cterm=underline
hi link SpellRare       SpellBad
hi link SpellLocal      SpellCap


" Visual: 23 is fine for video demo. 17 is fine.
hi Visual               ctermfg=none            ctermbg=23      cterm=none
hi Pmenu                ctermfg=none            ctermbg=19      cterm=none
hi PmenuSel             ctermfg=172             ctermbg=52      cterm=none

hi TabLineFill          ctermfg=none            ctermbg=19      cterm=none
hi TabLineSel           ctermfg=172             ctermbg=52      cterm=none
hi TabLine              ctermfg=none            ctermbg=19      cterm=none

hi StatusLine           ctermfg=none            ctermbg=19      cterm=none
au InsertEnter * hi StatusLine ctermfg=none     ctermbg=52      cterm=none
au InsertLeave * hi StatusLine ctermfg=none     ctermbg=19      cterm=none

hi DiffAdd              ctermfg=none            ctermbg=22      cterm=bold
hi DiffChange           ctermfg=none            ctermbg=19      cterm=none
hi DiffDelete           ctermfg=51              ctermbg=32      cterm=none
hi DiffText             ctermfg=none            ctermbg=88      cterm=bold

hi Folded               ctermfg=51              ctermbg=54      cterm=none

hi Todo                 ctermfg=9               ctermbg=none    cterm=underline,bold

hi ColorColumn          ctermfg=none            ctermbg=52      cterm=bold

hi IndentGuidesEven     ctermfg=none            ctermbg=238     cterm=none
hi IndentGuidesOdd      ctermfg=none            ctermbg=236     cterm=none

