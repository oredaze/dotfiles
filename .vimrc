"        ________ ++     ________
"       /VVVVVVVV\++++  /VVVVVVVV\
"       \VVVVVVVV/++++++\VVVVVVVV/
"        |VVVVVV|++++++++/VVVVV/'
"        |VVVVVV|++++++/VVVVV/'
"       +|VVVVVV|++++/VVVVV/'+
"     +++|VVVVVV|++/VVVVV/'+++++
"   +++++|VVVVVV|/VVV___++++++++++
"     +++|VVVVVVVVVV/##/ +_+_+_+_
"       +|VVVVVVVVV___ +/#_#,#_#,\
"        |VVVVVVV//##/+/#/+/#/'/#/
"        |VVVVV/'+/#/+/#/+/#/ /#/
"        |VVV/'++/#/+/#/ /#/ /#/
"        'V/'  /##//##//##//###/
"                 ++
" -----------------------------
" PLUGINS
" -----------------------------
call plug#begin()

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary', { 'frozen': 1 }
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'
Plug 'junegunn/fzf.vim'
Plug 'andymass/vim-matchup'
Plug 'kshenoy/vim-signature'
Plug 'svermeulen/vim-subversive'
Plug 'mbbill/undotree'
Plug 'bling/vim-bufferline'

call plug#end()

" -----------------------------
" GENERAL SETTINGS
" -----------------------------
set nocompatible
set background=dark
set noswapfile
set incsearch
set hlsearch
set ignorecase
set smartcase
set hidden
set confirm
set titlestring=%t\ \/\/\ Vim
set signcolumn=yes
set laststatus=2 " 2 always show statusline; 0 never show
set noruler
set encoding=utf-8
set fileencodings=utf-8
set ffs=unix,dos,mac
syntax on
filetype on
filetype plugin on
filetype indent off
set notimeout ttimeout ttimeoutlen=0
set wrap " Line wrap
set scrolloff=0
set showcmd " This shows what you are typing as a command
set shortmess-=S " Displays number of search results
set shortmess+=c
set showmatch " Show matching brackets when text indicator is over them
set mat=0 " How many tenths of a second to blink when matching brackets
set nonumber
set norelativenumber
" set signcolumn=number " Combine sign column with number column (vim-8.1.1564)
set splitbelow " New split is below
set splitright " New vsplit is to the right
set diffopt=vertical " Diff in vertical split by default
set spellfile=$HOME/.vim/en.utf-8.add
set directory^=$HOME/.vim/swp/
set showbreak=└>
set listchars=tab:\|\ ,nbsp:¬,trail:-,extends:»,precedes:«
set list
set iskeyword+="-"
set fillchars=diff:│,fold:-,vert:\|
set viminfo=%,<1000,s1000,'50,/30,:50,h,n~/.vim/.viminfo

" Line highlighting (number only)
set cursorline cursorlineopt=number

" Indent type
set tabstop=4 " Number of spaces of a tab
set shiftwidth=4 " The size of an indent
set noet sts=0 " Disables tab as real space characters
autocmd Filetype * setlocal ts=4 sw=4 noet sts=0
" No/Autoindent
set noautoindent " new indent based on current line
set nosmartindent " new indent based on language
set indentexpr=
set noci nopi " Auto indent disabling for copy and paste
" No/Autocomment
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" Popup menus
set wildmenu
set wildmode=list:longest,full
set omnifunc=syntaxcomplete#Complete " Set the omnicomplete function
set complete+=kspell
set completeopt=longest,menu " Set popup menu

set noundofile
set nobackup

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set belloff=all

set mouse=a
set ttymouse=sgr " Alacritty mouse selection fix

colorscheme 16bits

" Tmux fix
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	let &t_SI = "\e[5 q"
	let &t_EI = "\e[2 q"
endif

" -----------------------------
" HOTKEYS
" -----------------------------
" Change the leader key
" let mapleader="\<space>"
let mapleader="nop"
let maplocalleader="nop"

" Help
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

noremap <F4> :terminal<CR>

" Mouse wheel
nnoremap <ScrollWheelUp> 10<C-y>
nnoremap <ScrollWheelDown> 10<C-e>

" Misc
nnoremap <C-q> q
nnoremap q :q<CR>
nnoremap <C-i> <C-i>
cabbrev W w
cnoreabbrev CD cd %:h
nnoremap gm :bm<CR>
nnoremap y% ggVGy<C-o>
nnoremap gI a<C-v>
vmap y ygv<Esc>
vnoremap . :norm.<CR>
nnoremap <silent> <Backspace> :noh<CR>
nnoremap <space>os <Esc>:set spell!<CR>
vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>
nnoremap <silent><space>; mqA;<esc>`qmq
nnoremap ? 2<C-g>

" Tabs & windows
nnoremap <space>w <C-w>
nnoremap <C-w>, :bprev<CR>
nnoremap <C-w>. :bnext<CR>
nnoremap <Tab> <C-^>
nnoremap <space>1 1gt
nnoremap <space>2 2gt
nnoremap <space>3 3gt
nnoremap <space>4 4gt
nnoremap <space>5 5gt
nnoremap <space>6 6gt
nnoremap <space>7 7gt
nnoremap <space>8 8gt
nnoremap <space>9 9gt

" Copy, Cut & Paste to/from external clipboard
vnoremap <C-c> "+y
vnoremap <C-x> "+x
inoremap <C-v> <C-R>+

" Insert and command mode
cnoremap <C-a> <Home>
inoremap <C-a> <Home>
inoremap <C-e> <End>

" Toggle numbers
nnoremap <silent> <space>on :call ToggleNu()<CR>
function ToggleNu()
	if (&number)
		set nornu nonu
	else
		set nu rnu
	endif
endfunction

" Toggle numbers
nnoremap <silent> <space>ow :call ToggleWs()<CR>
function ToggleWs()
	if (&list)
		set nolist
	else
		set list
	endif
endfunction

" Toggle line/column highlights
nnoremap <silent> <space>ol :call ToggleHighlights()<CR>
function ToggleHighlights()
	if &cursorlineopt == "number"
		set cursorlineopt=line
	else
		set cursorlineopt=number
	endif
endfunction

" Diff toggle
nnoremap <silent> <space>od :call ToggleDiff()<CR>
function ToggleDiff()
	if (&diff)
		set nodiff noscrollbind
	else
		" Enable diff options in both windows; balance the sizes too
		wincmd =
		set diff scrollbind
		wincmd w
		set diff scrollbind
		wincmd w
	endif
endfunction

" Show names of syntax highlighting groups for word under cursor
nmap g? :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" " Paste without overwriting register
" 	" This supports "rp that replaces the selection by the contents of @r
" vnoremap <silent> <expr> p <sid>Repl()
" " I haven't found how to hide this function (yet)
" function! RestoreRegister()
" 	let @" = s:restore_reg
" 	return ''
" endfunction
" function! s:Repl()
" 	let s:restore_reg = @"
" 	return "p@=RestoreRegister()\<cr>"
" endfunction

" Open new spaced out lines
nnoremap go :call BigO()<CR>
function BigO ()
	if getline('.')[col('.')-1] == ''
		execute "normal! o\<cr>\<Up>"
		star
	else
		execute "normal! o\<cr>\<cr>\<Up>"
		star
	endif
endfunction

" Colors toggle
function! s:colors_toggle() abort
	if &termguicolors == 0
		set termguicolors
	else
		set notermguicolors
	endif
endfunction
nnoremap <silent><expr> <space>og <SID>colors_toggle()

" Autocomplete
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <Down> pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" -----------------------------
" ADVANCED SETTINGS
" -----------------------------

" Different cursors for different modes
if exists('$TMUX')
	" set normal mode to a block
	let &t_EI .= "\<esc>Ptmux;\<esc>\<esc>[2 q\<esc>\\"
	" set insert mode to a vertical line
	let &t_SI .= "\<esc>Ptmux;\<esc>\<esc>[6 q\<esc>\\"
	" set replace mode to an underscore
	let &t_SR .= "\<esc>Ptmux;\<esc>\<esc>[4 q\<esc>\\"
else
	let &t_EI = "\<Esc>[2 q"
	let &t_SI = "\<Esc>[6 q"
	let &t_SR = "\<Esc>[4 q"
endif

" Make the Nth char of a wide line stand out
call matchadd('ColorColumn', '\%81v', 81)

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal! g`\"" |
	\ endif

" Mutt
autocmd BufNewFile,BufRead /tmp/mutt* set filetype=mail wm=0 tw=72 nonumber digraph nolist
autocmd BufNewFile,BufRead ~/tmp/mutt* set filetype=mail wm=0 tw=72 nonumber digraph nolist

" File types
:au! BufNewFile,BufRead ~/.config/fvwm/* let b:fvwm_version = 2 |
	 \ set filetype=fvwm

" -----------------------------
" PLUGIN SETTINGS
" -----------------------------
let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zip = 1
let g:loaded_zipPlugin = 1
let g:loaded_getscript = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_vimball = 1
let g:loaded_vimballPlugin = 1
let g:loaded_2html_plugin = 1
let g:loaded_logiPat = 1
let g:loaded_rrhelper = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_matchparen = 1
let g:loaded_matchit = 1

" Undotree
let g:undotree_WindowLayout = 3
let g:undotree_SetFocusWhenToggle = 0
let g:undotree_SplitWidth = 38
let g:undotree_SetFocusWhenToggle = 1
nnoremap <space>u :UndotreeToggle<CR>

" Autopairs
let g:AutoPairs = {'(':')', '[':']', '{':'}', '<':'>', "'":"'", '"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}

" Move lines
let g:move_key_modifier = 'C'

" Commentary
autocmd FileType xdefaults setlocal commentstring=!%s

" Fzf
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9, 'relative': v:true } }
let g:fzf_preview_window = ['up:60%:border-bottom:<25(right,55%,border-left):hidden', 'ctrl-p']
let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-s': 'split',
	\ 'ctrl-v': 'vsplit' }
nnoremap <space>f :Files<CR>
nnoremap <space>g :Rg<CR>
nnoremap <space>/ :Lines<CR>
nnoremap <space>b :Buffers<CR>

" Subversive
vmap p <Plug>(SubversiveSubstitute)
vmap r <Plug>(SubversiveSubstitute)
nmap r <Plug>(SubversiveSubstitute)
nmap rr <Plug>(SubversiveSubstituteLine)
nmap rs <Plug>(SubversiveSubstituteRange)
nmap r* <Plug>(SubversiveSubstituteWordRange)
nmap r% ggVG<Plug>(SubversiveSubstitute)

" Matchup
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
let g:matchup_matchparen_offscreen = {}
let g:matchup_matchparen_stopline = 60
let g:matchup_matchparen_timeout = 20
let g:matchup_matchparen_insert_timeout = 20
let g:matchup_matchparen_deferred_show_delay = 10
nmap gb z%
xnoremap ib <plug>(matchup-i%)
onoremap ib <plug>(matchup-i%)
xnoremap ab <plug>(matchup-a%)
onoremap ab <plug>(matchup-a%)

" Supertab
autocmd FileType *
	\ if &omnifunc != '' |
	\ 	call SuperTabChain(&omnifunc, "<c-n>") |
	\ endif

" Fern
let g:fern#keepalt_on_edit = 1
let g:fern#keepjumps_on_edit = 1
let g:fern#drawer_width = 24
let g:fern#disable_drawer_tabpage_isolation = 1
let g:fern#disable_default_mappings = 1
let g:fern#disable_viewer_spinner = 1
let g:fern#renderer#default#collapsed_symbol = ' ▶ '
let g:fern#renderer#default#expanded_symbol = ' ▼ '
let g:fern#renderer#default#leading = ' | '
let g:fern#renderer#default#leaf_symbol = ' '
let g:fern#renderer#default#root_symbol = ' '

autocmd FileType fern call FernSetup()
function FernSetup()
	nmap <buffer><expr>
		\ <Plug>(fern-my-open-or-expand-or-collapse)
		\ fern#smart#leaf(
		\   "<Plug>(fern-action-open)",
		\   "<Plug>(fern-action-expand)",
		\   "<Plug>(fern-action-collapse)",
		\ )
	setlocal nornu
	setlocal nonu
	setlocal signcolumn=no
	nnoremap <silent> <buffer> e <Plug>(fern-my-open-or-expand-or-collapse)
	nnoremap <silent> <buffer> <2-LeftMouse> <Plug>(fern-my-open-or-expand-or-collapse)
	nnoremap <silent> <buffer> <RightMouse> <Plug>(fern-action-enter)
	nnoremap <silent> <buffer> <Left> <Plug>(fern-action-collapse)
	nnoremap <silent> <buffer> <Right> <Plug>(fern-action-open-or-expand)
	nnoremap <silent> <buffer> h <Plug>(fern-action-collapse)
	nnoremap <silent> <buffer> l <Plug>(fern-action-open-or-expand)
	nnoremap <silent> <buffer> u <Plug>(fern-action-leave)
	nnoremap <silent> <buffer> d <Plug>(fern-action-enter)
	nnoremap <silent> <buffer> <CR> <Plug>(fern-action-open-or-expand)
	nnoremap <buffer> cd <Plug>(fern-action-cd:root):echo "cwd set!"<CR>
	nnoremap <silent> <buffer> t <Plug>(fern-action-open:tabedit)
	nnoremap <silent> <buffer> s <Plug>(fern-action-open:split)
	nnoremap <silent> <buffer> v <Plug>(fern-action-open:vsplit)
	nnoremap <silent> <buffer> D <Plug>(fern-action-remove)
	nnoremap <silent> <buffer> af <Plug>(fern-action-new-file)
	nnoremap <silent> <buffer> ad <Plug>(fern-action-new-dir)
	nnoremap <silent> <buffer> ap <Plug>(fern-action-new-path)
	nnoremap <silent> <buffer> f <Plug>(fern-glossary-window-selector)
	nnoremap <silent> <buffer> o <Plug>(fern-action-open:system)
	nnoremap <silent> <buffer> cc <Plug>(fern-action-rename)
	nnoremap <silent> <buffer> <Tab> <Plug>(fern-action-mark)
	nnoremap <silent> <buffer> zh <Plug>(fern-action-hidden)
endfunction

nnoremap <space>t :Fern %:h -drawer -toggle<CR>
nnoremap <space>e :Fern %:h<CR>
cabbrev E Fern %:h
cabbrev S Fern %:h -opener=split
cabbrev V Fern %:h -opener=vsplit
cabbrev T Fern %:h -opener=tabedit

" Bufferline
let g:bufferline_echo = 0
autocmd VimEnter *
	\ let &statusline='%{bufferline#refresh_status()}'
	\ .bufferline#get_status_string()

" -----------------------------
" INFO LINES
" -----------------------------
" Tabline format
set tabline=%!MyTabLine()  " custom tab pages line
function! MyTabLine()
	let s = ''
	" loop through each tab page
	for i in range(tabpagenr('$'))
		" set the tab page number (for mouse clicks)
		if i + 1 == tabpagenr()
			let s .= '%#TablineSel#%' . (i + 1) . 'T '
			let s .= i + 1 . '%#TablineSel#: ' " With symbol after tab N.
		else
			let s .= '%#Tabline#%' . (i + 1) . 'T '
			let s .= i + 1 . '%#Tabline#: ' " With symbol after tab N.
		endif
		" get buffer names and statuses
		let n = ''  " temp str for buf names
		let m = 0   " &modified counter
		let buflist = tabpagebuflist(i + 1)
		" loop through each buffer in a tab
		for b in buflist
			if getbufvar(b, "&buftype") == 'help'
				" let n .= '[H]' . fnamemodify(bufname(b), ':t:s/.txt$//')
			elseif getbufvar(b, "&buftype") == 'quickfix'
				" let n .= '[Q]'
			elseif getbufvar(b, "&modifiable")
				let n .= fnamemodify(bufname(b), ':t') . ', '
			endif
			if getbufvar(b, "&modified")
				let m += 1
			endif
		endfor
		" remove leftover artifacts
		let n = substitute(n, ', $', '', '')
		" add buffer names
		if n == ''
			let s.= 'No Name '
		else
			let s .= n . ' '
		endif
		if m > 0
				let s .= '+ '
		endif
	endfor
	let s .= '%#TabLineFill#%T'
	return s
endfunction

" Info lines
" set statusline=\ %t\ %m\ %r%=%<\(%n\)\ \:\ %v\ \:\ %l/%L\ [%P]\ 
