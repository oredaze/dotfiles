" Vim color file for 8-16 color terminals
"
" Name:    8monkeys
" Author:  Corvian <2drealm@gmail.com>

hi clear
if exists("syntax_on")
	syntax reset
endif
set background=dark

let g:colors_name = "8monkeys"

" --------------------
" Interface
" --------------------
" Status line focused
hi StatusLine                ctermfg=7 ctermbg=0 cterm=bold
" Status line unfocused
hi StatusLineNC              ctermfg=0 ctermbg=0 cterm=bold

hi VertSplit                 ctermfg=1 ctermbg=none cterm=bold

" Folds
hi Folded                    ctermfg=0 ctermbg=7 cterm=bold
hi FoldColumn                ctermfg=7 ctermbg=0 cterm=bold

" Line numbers
hi LineNr                    ctermfg=0 ctermbg=none cterm=bold
" Cursor position on line numbers
hi CursorLineNr              ctermfg=3              cterm=bold
" Column for markers
hi SignColumn                ctermfg=0 ctermbg=none cterm=none

" Command line completion
hi WildMenu                  ctermfg=0 ctermbg=7 cterm=bold


" --------------------
" Misc elements
" --------------------
" Marking for very long lines
hi ColorColumn               ctermfg=0 ctermbg=5 cterm=none
hi ToDo                      ctermfg=0 ctermbg=3 cterm=none
hi Directory                 ctermfg=2 ctermbg=0 cterm=bold

hi Normal      guibg=#0f0f0f ctermfg=7 ctermbg=none cterm=none
hi Cursor                    ctermfg=0 ctermbg=7 cterm=none
hi CursorLine                          ctermbg=none cterm=none

" Tab number and?
hi Title                     ctermfg=3 ctermbg=none cterm=none
" Current mode indicator
hi ModeMsg                   ctermfg=7 ctermbg=none cterm=bold

" Question prompt (yes/no)
hi Question                  ctermfg=3 ctermbg=none cterm=none
" Prompt to press for more
hi MoreMsg                   ctermfg=3 ctermbg=none cterm=none
hi WarningMsg                ctermfg=3 ctermbg=none cterm=none
hi ErrorMsg                  ctermfg=1 ctermbg=none cterm=none

" New line wrapping character // Other misc UI elements
hi NonText                   ctermfg=8 ctermbg=none cterm=none
" Filler lines (~) after the last line in the buffer
hi EndOfBuffer               ctermfg=4 ctermbg=none cterm=bold

hi Conceal                   ctermfg=0 ctermbg=1 cterm=none

hi Visual                    ctermfg=0 ctermbg=3 cterm=none

hi Search                    ctermfg=0 ctermbg=3 cterm=none
hi incSearch                 ctermfg=0 ctermbg=3 cterm=none

" Special markers like tab space
hi SpecialKey                ctermfg=0 ctermbg=none cterm=bold

" Syntaxis error
hi Error                     ctermfg=0 ctermbg=1 cterm=none

" --------------------
" Syntax
" --------------------
hi Comment                   ctermfg=0           cterm=bold
hi String                    ctermfg=3           cterm=none

hi Constant                  ctermfg=3           cterm=bold
hi Character                 ctermfg=3           cterm=bold

hi Number                    ctermfg=4           cterm=bold
hi Float                     ctermfg=4           cterm=bold
hi Boolean                   ctermfg=1           cterm=none

hi Identifier                ctermfg=5           cterm=none
hi Function                  ctermfg=2           cterm=bold

hi Statement                 ctermfg=2           cterm=none
hi Conditional               ctermfg=2           cterm=none
hi Repeat                    ctermfg=2           cterm=none
" "sizeof", "+", "*", etc.
hi Operator                  ctermfg=4           cterm=bold
hi Keyword                   ctermfg=2           cterm=bold
hi Exeption                  ctermfg=2           cterm=bold

" Generic Preprocessor
hi PreProc                   ctermfg=6           cterm=none
hi Include                   ctermfg=6           cterm=bold
hi Define                    ctermfg=2           cterm=none
hi PreCondit                 ctermfg=2           cterm=none

hi Type                      ctermfg=1           cterm=none
hi Structure                 ctermfg=1           cterm=bold

" any special symbol
hi Special                   ctermfg=1           cterm=none
" special character in a constant
hi SpecialChar               ctermfg=6           cterm=none

" character that needs attention
hi Delimiter                 ctermfg=1           cterm=bold

" Haskell
hi hsVarSym                  ctermfg=1           cterm=bold
hi hsConSym                  ctermfg=1           cterm=bold
hi hsStructure               ctermfg=6           cterm=none
hi hsDelimiter               ctermfg=7           cterm=bold

" Python
hi pythonImport              ctermfg=6           cterm=none

" Lua
hi luaOperator               ctermfg=2           cterm=none
hi luaTable                  ctermfg=3           cterm=bold

" html, xml
hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag
hi xmlTag                    ctermfg=2           cterm=none
hi xmlTagName                ctermfg=2           cterm=bold
hi xmlEndTag                 ctermfg=2           cterm=none

hi mailSubject               ctermfg=2           cterm=none
hi mailHeaderKey             ctermfg=2           cterm=bold
hi mailEmail                 ctermfg=7           cterm=none

" Diff
hi DiffText                  ctermfg=7 ctermbg=4 cterm=bold
hi DiffChange                ctermfg=0 ctermbg=4 cterm=bold
hi DiffDelete                ctermfg=1 ctermbg=0 cterm=none
hi DiffAdd                   ctermfg=4 ctermbg=0 cterm=bold
	if v:version >= 700
		hi SpellBad    ctermfg=1 ctermbg=none
		hi SpellCap    ctermfg=6 ctermbg=none
		hi SpellRare   ctermfg=3 ctermbg=none
		hi SpellLocal  ctermfg=6 ctermbg=none

		hi Pmenu       ctermfg=7 ctermbg=0 cterm=none
		hi PmenuSel    ctermfg=0 ctermbg=7 cterm=bold
		hi PmenuSbar   ctermbg=0
		hi PmenuThumb  ctermbg=7
		" Matching parentheses
		hi MatchParen  ctermfg=1 ctermbg=none cterm=none

		hi TabLine     ctermfg=0 ctermbg=0 cterm=bold
		hi TabLineFill ctermbg=0           cterm=bold
		hi TabLineSel  ctermfg=7 ctermbg=4 cterm=bold
	endif

" Signature plugin
hi SignatureMarkText         ctermfg=1           cterm=bold
