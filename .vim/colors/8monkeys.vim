" Vim color file for 8-16 color terminals
" Name:		8monkeys
" Author:	Corvian <2drealm@gmail.com>
" Version:	1.0

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "8monkeys"

" Interface Elements
hi StatusLine			ctermfg=7	ctermbg=0	cterm=bold
hi StatusLineNC			ctermfg=0	ctermbg=0	cterm=bold
hi VertSplit			ctermfg=1	ctermbg=none	cterm=bold
hi Folded				ctermfg=0	ctermbg=7	cterm=bold
hi FoldColumn			ctermfg=7	ctermbg=0	cterm=bold
hi LineNr				ctermfg=0	ctermbg=none	cterm=bold

hi CursorLineNr			ctermfg=3			 	cterm=bold
hi WildMenu				ctermfg=7	ctermbg=0 	cterm=none
hi ColorColumn			ctermfg=0	ctermbg=5	cterm=none
hi ToDo					ctermfg=0	ctermbg=3	cterm=none
hi Directory			ctermfg=2	ctermbg=0	cterm=bold
hi SignColumn			ctermfg=0	ctermbg=none	cterm=none
hi Conceal				ctermfg=0	ctermbg=1	cterm=none

hi Normal				ctermfg=7	ctermbg=none	cterm=none
hi Cursor				ctermfg=0	ctermbg=7	cterm=none
hi CursorLine						ctermbg=none	cterm=none

hi Title				ctermfg=3	ctermbg=none	cterm=none
hi Question				ctermfg=3 	ctermbg=none	cterm=none
hi ModeMsg				ctermfg=7	ctermbg=none	cterm=bold
hi MoreMsg				ctermfg=3	ctermbg=none	cterm=none
hi ErrorMsg				ctermfg=1	ctermbg=none	cterm=none
hi WarningMsg			ctermfg=3	ctermbg=none	cterm=none
hi NonText				ctermfg=4 	ctermbg=none	cterm=none

hi Visual				ctermfg=0	ctermbg=3	cterm=none
hi Search				ctermfg=0	ctermbg=3	cterm=none
hi incSearch			ctermfg=0 	ctermbg=3	cterm=none
hi Error				ctermfg=0	ctermbg=1	cterm=none

hi Comment				ctermfg=0				cterm=bold
hi Boolean				ctermfg=1				cterm=none
hi String				ctermfg=3				cterm=none
hi Statement			ctermfg=2 				cterm=none
hi Function				ctermfg=2				cterm=bold
hi Include				ctermfg=6				cterm=bold
hi Type					ctermfg=1				cterm=none
hi Special				ctermfg=1				cterm=none
hi Number				ctermfg=3				cterm=bold
hi Constant				ctermfg=3				cterm=bold
hi Identifier			ctermfg=5				cterm=none
hi PreProc				ctermfg=6				cterm=none
hi SpecialKey			ctermfg=0	ctermbg=none	cterm=bold
hi Exeption				ctermfg=2				cterm=bold
hi Define				ctermfg=2				cterm=none
hi PreCondit			ctermfg=2				cterm=none
hi Delimiter			ctermfg=1				cterm=bold
hi Operator				ctermfg=4				cterm=bold

" Python
hi pythonBuiltin		ctermfg=3				cterm=bold
hi pythonOperator		ctermfg=4				cterm=none
hi pythonException		ctermfg=2				cterm=none
hi pythonExClass		ctermfg=2				cterm=bold
hi pythonDecorator		ctermfg=2				cterm=bold
hi pythonDecoratorFunction	ctermfg=2			cterm=bold

" Ruby
hi rubyConstant					ctermfg=1		cterm=none
hi rubyBlockParameter			ctermfg=6		cterm=none
hi rubyClass					ctermfg=2		cterm=bold
hi rubyInstanceVariable			ctermfg=6		cterm=none
hi rubyLocalVariableOrMethod	ctermfg=6		cterm=none
hi rubyStringDelimiter			ctermfg=3		cterm=bold

hi luaOperator			ctermfg=4				cterm=none

" html, xml
hi link htmlTag			xmlTag
hi link htmlTagName		xmlTagName
hi link htmlEndTag		xmlEndTag
hi xmlTag				ctermfg=2				cterm=none
hi xmlTagName			ctermfg=2				cterm=bold
hi xmlEndTag			ctermfg=2				cterm=none

hi mailSubject			ctermfg=2				cterm=none
hi mailHeaderKey		ctermfg=2				cterm=bold
hi mailEmail			ctermfg=7				cterm=none

" Diff
hi DiffText				ctermfg=7	ctermbg=4	cterm=bold
hi DiffChange			ctermfg=0	ctermbg=4	cterm=bold
hi DiffDelete			ctermfg=1 	ctermbg=0	cterm=none
hi DiffAdd				ctermfg=4	ctermbg=0	cterm=bold
    if v:version >= 700
        hi SpellBad       ctermfg=1	ctermbg=none
        hi SpellCap       ctermfg=6	ctermbg=none
        hi SpellRare      ctermfg=3	ctermbg=none
        hi SpellLocal     ctermfg=6	ctermbg=none

        hi Pmenu          ctermfg=7	ctermbg=0	cterm=none
        hi PmenuSel       ctermfg=0	ctermbg=7	cterm=bold
        hi PmenuSbar      			ctermbg=0
        hi PmenuThumb    		 	ctermbg=7

        hi MatchParen     ctermfg=1	ctermbg=6	cterm=none

		hi TabLine		ctermfg=0	ctermbg=0	cterm=bold
		hi TabLineFill				ctermbg=0	cterm=bold
		hi TabLineSel	ctermfg=7	ctermbg=4	cterm=bold
	endif
