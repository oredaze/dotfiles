" Vim color file
"
" File:			sourcerer.vim
" Creator:		forked by: Corvian <2drealm@gmail.com>
" Version:		1.0
" Last Change:	11 December 2018

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "sourcerer"

" ######## GUI Colors ########

" #### Interface Elements ####
" Status line focused
hi StatusLine				guifg=#000000	guibg=#808070	gui=NONE
" Status line unfocused
hi StatusLineNC				guifg=#000000	guibg=#404C4C	gui=NONE
hi VertSplit				guifg=#000000	guibg=#232C2C	gui=bold
" folds
hi Folded					guifg=#406060	guibg=#232C2C	gui=NONE
hi FoldColumn				guifg=#406060	guibg=#232C2C	gui=NONE
" Line numbers
hi LineNr					guifg=#686858	guibg=#0D0D0D	gui=NONE
" Cursor position on line numbers
hi CursorLineNr				guifg=#F28D00	guibg=#0D0D0D	gui=NONE
" Column for markers
hi SignColumn				guifg=#BF5330	guibg=#0D0D0D	gui=bold

" Selected tab
hi TabLineSel				guifg=#000000	guibg=#808070	gui=NONE
hi TabLine					guifg=#BFBFAE	guibg=#404C4C	gui=NONE
hi TabLineFill							guibg=#404C4C	gui=NONE

" Popup menu
hi Pmenu					guifg=#BFBFAE	guibg=#0D0D0D	gui=NONE
hi PmenuSel					guifg=#F2F2DD	guibg=#233A31	gui=NONE
" Scrollbar
hi PmenuSbar							guibg=#808070	gui=NONE
" Thumb of the scrollbar
hi PmenuThumb							guibg=#0D0D0D	gui=NONE
" Current match in 'wildmenu' completion
hi WildMenu					guifg=#F2F2DD	guibg=#233A31	gui=NONE

" #### Miscelaneous elements ####
" Marking for very long lines
hi ColorColumn				guifg=NONE		guibg=#6A4080	gui=NONE
" TODO marker
hi ToDo					guifg=#AC86BF	guibg=#0D0D0D	gui=bold
hi Directory				guifg=#D99100	guibg=NONE		gui=NONE

" Normal text and background
hi Normal					guifg=#BFBFAE	guibg=#1F1F1F
" Cursor
hi Cursor					guifg=#000000	guibg=#BFBF99	gui=bold
" Current line the cursor is on
hi CursorLine				guifg=NONE		guibg=#292929	gui=NONE
" Current column the cursor is on
hi CursorColumn				guifg=NONE		guibg=#262626	gui=NONE

hi Title					guifg=#3F8B61	guibg=NONE		gui=NONE
" Question prompt (yes/no)
hi Question					guifg=#3F8B61	guibg=NONE		gui=NONE
" Current mode indicator
hi ModeMsg					guifg=#F28D00	guibg=NONE		gui=bold
" Prompt to press for more
hi MoreMsg					guifg=#3F8B61	guibg=NONE		gui=NONE
hi ErrorMsg					guifg=#BF5330	guibg=NONE		gui=NONE
hi WarningMsg				guifg=#BF8000	guibg=NONE		gui=NONE
" Other misc UI elements
hi NonText					guifg=#474759	guibg=#121212	gui=NONE
" Filler lines (~) after the last line in the buffer
hi EndOfBuffer				guifg=#474759	guibg=#121212	gui=NONE

hi Visual					guifg=NONE		guibg=#233A31	gui=NONE
" When not owning selection (Only X11 Gui's |gui-x11| and |xterm-clipboard|
" supports this.)
hi VisualNOS				guifg=NONE		guibg=#233A31	gui=NONE
hi Search					guifg=#000000	guibg=#7A8059	gui=NONE
" Incremental search
hi IncSearch				guifg=#000000	guibg=#AAB472	gui=NONE
" Special markers like tab space
hi SpecialKey				guifg=#2F3B38	guibg=NONE		gui=NONE

" #### Syntax elements ####
" Syntaxis error
hi Error					guifg=#B1AA88	guibg=#592424	gui=NONE
" Matching parentheses
hi MatchParen				guifg=#BF3E30	guibg=#1B1121	gui=bold

hi Comment					guifg=#6D736D	guibg=NONE		gui=NONE

" Any constant
hi Constant					guifg=#BF5330	guibg=NONE		gui=NONE
" a string constant: "this is a string"
hi String					guifg=#A1BF71	guibg=NONE		gui=NONE
" a character constant: 'c', '\n'
hi Character				guifg=#BF5330	guibg=NONE		gui=NONE
" a number constant: 234, 0xff
hi Number					guifg=#D99100	guibg=NONE		gui=NONE
" a boolean constant: TRUE, false
hi Boolean					guifg=#F28D00	guibg=NONE		gui=NONE
" a floating point constant: 2.3e10
hi float					guifg=#D99100	guibg=NONE		gui=NONE

" Any variable name
hi Identifier				guifg=#BFB273	guibg=NONE		gui=NONE
" function name (also: methods for classes)
hi Function					guifg=#BFB273	guibg=NONE		gui=NONE

" Any statement
hi Statement				guifg=#5D9E98	guibg=NONE		gui=NONE
" if, then, else, endif, switch, etc.
"hi Conditional				guifg=	guibg=NONE		gui=NONE
" for, do, while, etc.
"hi Repeat					guifg=	guibg=NONE		gui=NONE
" case, default, etc.
"hi Label					guifg=	guibg=NONE		gui=NONE
" "sizeof", "+", "*", etc.
hi Operator					guifg=#56BFBF	guibg=NONE		gui=NONE
" any other keyword
"hi Keyword					guifg=	guibg=NONE		gui=NONE
" try, catch, throw
"hi Exeption					guifg=	guibg=NONE		gui=NONE

" Generic Preprocessor
hi PreProc					guifg=#608ABF	guibg=NONE		gui=NONE
" preprocessor #include
hi Include					guifg=#608ABF	guibg=NONE		gui=NONE
" preprocessor #define
hi Define					guifg=#608ABF	guibg=NONE		gui=NONE
" preprocessor #if, #else, #endif, etc.
hi PreCondit				guifg=#608ABF	guibg=NONE		gui=NONE

" int, long, char, etc.
hi Type					guifg=#AC86BF	guibg=NONE		gui=NONE
" static, register, volatile, etc.
"hi StorageClass				guifg=	guibg=NONE		gui=NONE
" struct, union, enum, etc. {curly brackets}
hi Structure				guifg=#AC86BF	guibg=NONE		gui=bold
" a typedef
"hi Typedef					guifg=	guibg=NONE		gui=NONE

" any special symbol
hi Special					guifg=#838C1C	guibg=NONE		gui=NONE
" special character in a constant
hi SpecialChar				guifg=#F28D00	guibg=NONE		gui=NONE
" character that needs attention
hi Delimiter				guifg=#838C1C	guibg=NONE		gui=NONE
" special things inside a comment
hi SpecialComment				guifg=#838C1C	guibg=NONE		gui=NONE

" Lua
hi luaOperator				guifg=#53B5B8	guibg=NONE		gui=NONE

" html, xml
hi link htmlTag				xmlTag
hi link htmlTagName			xmlTagName
hi link htmlEndTag			xmlEndTag
hi xmlTag					guifg=#5A9994
hi xmlTagName				guifg=#608ABF
hi xmlEndTag				guifg=#5A9994

" Diff
hi DiffText					guifg=NONE	guibg=#251926	gui=NONE
hi DiffChange				guifg=NONE	guibg=#242433	gui=NONE
hi DiffDelete				guifg=NONE	guibg=#332424	gui=NONE
hi DiffAdd					guifg=NONE	guibg=#24332A	gui=NONE

" Spell Check
hi SpellBad					guifg=NONE	guisp=#BF5330	gui=undercurl
hi SpellCap					guifg=NONE	guisp=#608ABF	gui=undercurl
hi SpellLocal				guifg=NONE	guisp=#5A9994	gui=undercurl
hi SpellRare				guifg=NONE	guisp=#AC86BF	gui=undercurl

" ToDo: 256 Colors
" ===================================================================
"
" Interface Elements
hi StatusLine			ctermfg=16		ctermbg=244		cterm=NONE
hi StatusLineNC			ctermfg=16		ctermbg=238		cterm=NONE
hi VertSplit			ctermfg=16		ctermbg=238		cterm=NONE
hi Folded				ctermfg=16		ctermbg=238		cterm=NONE
hi FoldColumn			ctermfg=16		ctermbg=238		cterm=NONE
hi LineNr				ctermfg=59		ctermbg=16 		cterm=NONE
" ctermbg=16  ^^

hi CursorLineNr											cterm=NONE
hi TabLine				ctermfg=16		ctermbg=238		cterm=NONE
hi TabLineFill							ctermbg=238		cterm=NONE
hi TabLineSel			ctermfg=16		ctermbg=244		cterm=NONE
hi Pmenu				ctermfg=188		ctermbg=235		cterm=NONE
hi PmenuSel				ctermfg=188		ctermbg=233		cterm=NONE
hi PmenuSbar							ctermbg=16		cterm=NONE
hi PmenuThumb							ctermbg=240		cterm=NONE
hi WildMenu				ctermfg=188		ctermbg=16		cterm=NONE
hi ColorColumn			ctermfg=NONE	ctermbg=238		cterm=NONE
hi ToDo					ctermfg=96		ctermbg=233		cterm=NONE
hi Directory			ctermfg=136		ctermbg=234		cterm=NONE
hi SignColumn			ctermfg=NONE	ctermbg=238		cterm=NONE
hi Conceal				ctermfg=161		ctermbg=217		cterm=NONE

hi Normal				ctermfg=145		ctermbg=none
" ctermbg=235  ^^

hi Cursor				ctermfg=NONE	ctermbg=241
hi CursorLine							ctermbg=233		cterm=NONE

hi Title				ctermfg=30
hi Question				ctermfg=29						cterm=NONE
hi ModeMsg				ctermfg=16		ctermbg=101		cterm=NONE
hi MoreMsg				ctermfg=29
hi ErrorMsg				ctermfg=203		ctermbg=NONE	cterm=NONE
hi WarningMsg			ctermfg=214		ctermbg=NONE
hi NonText				ctermfg=66		ctermbg=233		cterm=NONE
" ctermbg=234  ^^

hi Visual				ctermfg=NONE	ctermbg=23		cterm=NONE
hi Search				ctermfg=16 		ctermbg=101		cterm=NONE
hi incSearch			ctermfg=16		ctermbg=107		cterm=NONE
hi Error				ctermfg=144		ctermbg=88		cterm=NONE
hi MatchParen			ctermfg=1		ctermbg=16		cterm=NONE

hi Comment				ctermfg=242						cterm=NONE
hi Boolean				ctermfg=208						cterm=NONE
hi String				ctermfg=65
hi Statement			ctermfg=67						cterm=NONE
hi Function				ctermfg=143						cterm=NONE
hi Include				ctermfg=216						cterm=NONE
hi Type					ctermfg=60						cterm=NONE
hi Special				ctermfg=64
hi Number				ctermfg=136
hi Constant				ctermfg=217
hi Identifier			ctermfg=97						cterm=NONE
hi PreProc				ctermfg=66
hi SpecialKey			ctermfg=9		ctermbg=none	cterm=NONE
hi Define				ctermfg=67						cterm=NONE
hi Exeption				ctermfg=94
hi link PreCondit		Statement
hi link Delimiter		Type
hi link Operator		Constant
hi link Keyword			Statement

" html, xml
hi link htmlTag			xmlTag
hi link htmlTagName		xmlTagName
hi link htmlEndTag		xmlEndTag
hi xmlTag				ctermfg=66
hi xmlTagName			ctermfg=67
hi xmlEndTag			ctermfg=66

" Diff
hi DiffText				ctermfg=146		ctermbg=8	cterm=NONE
hi DiffChange			ctermfg=146		ctermbg=60	cterm=NONE
hi DiffDelete			ctermfg=52		ctermbg=95	cterm=NONE
hi DiffAdd				ctermfg=236		ctermbg=65	cterm=NONE

" Spell Check
hi SpellBad				ctermfg=9			cterm=undercurl
hi SpellCap				ctermfg=27			cterm=undercurl
hi SpellLocal			ctermfg=72			cterm=undercurl
hi SpellRare			ctermfg=164			cterm=undercurl
