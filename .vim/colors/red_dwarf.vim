" Vim color file
"
" Name:    red_dwarf
" Author:  Corvian <2drealm@gmail.com>

hi clear
if exists("syntax_on")
	syntax reset
endif
set background=dark

let g:colors_name = "red_dwarf"

" The colors
let s:black = "#000000"
let s:background = "#0C0C0D"
let s:grey = "#6B6B6B"
let s:darkgrey = "#1A1A1A"
let s:white = "#D9C3AD"
let s:red = "#B83B2E"
let s:darkred = "#4D140E"
let s:green = "#B3AA54"
let s:yellow = "#D99B36"
let s:blue = "#6B8FB3"
let s:peach = "#D97B4C"
let s:creamy = "#D9BC82"
let s:brown = "#A66153"
let s:darkbrown = "#1C1308"
let s:special = "#33211F"
let s:cursorline = "#121214"
let s:interface = "#401D1A"

let s:diffadd = "#0D1F2B"
let s:diffremove = "#2B100D"
let s:diffchanged = "#332447"

" highlighting function
fun! <sid>h(x, gf, gb, a)
	if a:gf != '' | exe 'hi ' . a:x . ' guifg='  . a:gf | endif
	if a:gb != '' | exe 'hi ' . a:x . ' guibg='  . a:gb | endif
	if a:a  != '' | exe 'hi ' . a:x . ' gui='    . a:a  | endif
endfun

" --------------------
" Interface
" --------------------
" Status line focused
cal <sid>h('StatusLine'         , s:creamy , s:interface , 'bold')
" Status line unfocused
cal <sid>h('StatusLineNC'       , s:creamy , s:darkgrey , 'bold')

hi! link TabLineSel StatusLine
hi! link TabLine StatusLineNC
cal <sid>h('TabLineFill'        , '' , s:darkgrey , 'NONE')

cal <sid>h('VertSplit'          , s:red , s:darkgrey , 'bold')

" folds
cal <sid>h('Folded'             , s:white , s:interface , 'bold')
cal <sid>h('FoldColumn'         , s:red , s:black , 'bold')

" Line numbers
hi! link LineNr Comment
" Cursor position on line numbers
cal <sid>h('CursorLineNr'       , s:creamy , '' , 'bold')
" Column for markers
cal <sid>h('SignColumn'         , s:red , s:background , 'bold')

" Popup menu
cal <sid>h('Pmenu'              , s:white , s:interface , 'NONE')
cal <sid>h('PmenuSel'           , s:black , s:white , 'bold')
cal <sid>h('PmenuSbar'          , '' , s:black , 'NONE')
cal <sid>h('PmenuThumb'         , '' , s:white , 'NONE')

" Current match in 'wildmenu' completion
cal <sid>h('WildMenu'           , s:black , s:white , 'bold')

" --------------------
" Misc elements
" --------------------
" Marking for very long lines
hi! link ColorColumn Error
cal <sid>h('ToDo'               , s:blue , s:darkbrown , 'bold')
hi! link Directory Statement

" Normal text and background
cal <sid>h('Normal'             , s:white , s:background , 'NONE')
cal <sid>h('Cursor'             , s:black , s:red , 'bold')

" Current placing of the cursor
cal <sid>h('CursorLine'         , '' , s:cursorline , 'NONE')
hi! link CursorColumn CursorLine

" Tab number and?
cal <sid>h('Title'              , s:white , '' , 'bold')
" Current mode indicator
cal <sid>h('ModeMsg'            , s:blue , '' , 'bold')

" Prompts
hi! link Question Normal
hi! link MoreMsg Normal
cal <sid>h('WarningMsg'         , s:yellow , s:background , 'bold')
cal <sid>h('ErrorMsg'           , s:red , s:background , 'bold')

" New line wrapping character // Other misc UI elements
hi! link NonText Comment
" Filler lines (~) after the last line in the buffer
cal <sid>h('EndOfBuffer'        , s:red , s:black , 'bold')

cal <sid>h('Visual'             , '' , s:darkred , 'NONE')
" When not owning selection (Only X11 Gui's |gui-x11| and |xterm-clipboard|
" supports this.)
hi! link VisualNOS Visual

cal <sid>h('Search'             , s:black , s:creamy , 'NONE')
cal <sid>h('IncSearch'          , s:black , s:creamy , 'NONE')

" Special markers like tab space
cal <sid>h('SpecialKey'         , s:special , '' , 'NONE')

" Syntaxis error
cal <sid>h('Error'              , s:creamy , s:darkred , 'NONE')

" --------------------
" Syntax
" --------------------
" Matching parentheses
hi! link MatchParen Character

cal <sid>h('Comment'            , s:grey , '' , 'NONE')

cal <sid>h('String'             , s:creamy , s:darkbrown , 'NONE')

" Any constant
hi! link Constant Character
" a character constant: 'c', '\n'
cal <sid>h('Character'          , s:green , '' , 'bold')

cal <sid>h('Number'             , s:blue , '' , 'bold')
hi! link Float Number
hi! link Boolean Character

cal <sid>h('Identifier'         , s:yellow , '' , 'NONE')
hi! link Function Identifier

" Any statement
cal <sid>h('Statement'          , s:red , '' , 'NONE')
hi! link Conditional Statement
hi! link Repeat Statement
" "sizeof", "+", "*", etc.
cal <sid>h('Operator'           , s:red , '' , 'bold')
hi! link Keyword Statement
hi! link Exception Statement

" Generic Preprocessor
cal <sid>h('PreProc'            , s:peach , '' , 'NONE')
hi! link Include PreProc
hi! link Define PreProc
hi! link PreCondit PreProc

" int, long, char, etc.
cal <sid>h('Type'               , s:brown , '' , 'NONE')
" struct, union, enum, etc. {curly brackets}
cal <sid>h('Structure'          , s:brown , '' , 'bold')

" any special symbol
cal <sid>h('Special'            , s:green , '' , 'NONE')
" special character in a constant
cal <sid>h('SpecialChar'        , s:green , '' , 'bold')
hi! link Tag Special
" character that needs attention
cal <sid>h('Delimiter'          , s:white , '' , 'bold')
" special things inside a comment
hi! link SpecialComment SpecialChar

" Lua
hi! link luaOperator Statement
hi! link luaTable Character

" Python
hi! link pythonImport PreProc

" Haskell
hi! link hsVarSym Statement
hi! link hsConSym Statement
hi! link hsStructure Identifier
cal <sid>h('hsDelimiter'        , s:white , '' , 'bold')

" Vim script
cal <sid>h('vimHiBang'          , '' , '' , 'bold')

" --------------------
" More stuff
" --------------------
" Diff
cal <sid>h('DiffText'           , '' , s:diffchanged , 'NONE')
cal <sid>h('DiffChange'         , '' , s:background , 'NONE')
cal <sid>h('DiffDelete'         , '' , s:diffremove , 'NONE')
cal <sid>h('DiffAdd'            , '' , s:diffadd , 'NONE')

" Spell Check
hi SpellBad                     guifg=NONE guisp=#B83B2E gui=undercurl
hi SpellCap                     guifg=NONE guisp=#6B8FB3 gui=undercurl
hi SpellLocal                   guifg=NONE guisp=#B3AA54 gui=undercurl
hi SpellRare                    guifg=NONE guisp=#D99B36 gui=undercurl

" --------------------
" Plugins
" --------------------
" Signature
cal <sid>h('SignatureMarkText'  , s:red , '' , 'bold')
