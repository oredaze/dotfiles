" --------------------
" VIM GENERAL SETTINGS
" --------------------
set nocompatible
set background=dark
set incsearch
set hlsearch
set ignorecase
set title
set ruler
set encoding=utf-8
set fileencodings=utf-8
set ffs=unix,dos,mac
set scrolloff=1 " Cursor leaves space when scrolling
syntax on
filetype on
filetype plugin on
set notimeout ttimeout ttimeoutlen=0
set wrap " Line wrap
set showcmd " This shows what you are typing as a command
set showmatch " Show matching brackets when text indicator is over them
set mat=2 " How many tenths of a second to blink when matching brackets
set splitbelow " New split is below
set splitright " New vsplit is to the right
set diffopt=vertical " Diff in vertical split by default
set tabstop=8 " Number of spaces of a tab
set shiftwidth=8 " The size of an indent
autocmd Filetype python setlocal ts=8 sw=8 sts=0 noexpandtab
set noet sts=0 " Disables tab as real space characters
set noci nopi " Auto indent disabling for copy and paste
set noautoindent
set nosmartindent
set wildmenu
set wildmode=list:longest,full
set omnifunc=syntaxcomplete#Complete " Set the omnicomplete function
set completeopt=longest,menuone " Set popup menu
set spellfile=$HOME/.vim/en.utf-8.add
set noshowmode " Disables mode indicator (use with airline)

" Sets the leader key to space
let mapleader = "\<Space>"
nnoremap <leader> <C-W>

if has('gui_running')
	set guifont=droopybdf\ 12
	set guifontwide=mplus\ Medium\ 12
"	set guifont=VGA\ 12
"	set guifont=Ubuntu\ Mono\ 13
"	set guifontwide=IPAGothic\ 11
	set guioptions-=T
	set guioptions-=e
	set guioptions-=m "Hides menu bar
	set lines=60 columns=86
	set guiheadroom=1
	colorscheme red_dwarf
	let g:airline_theme = "copycat"
	let g:colorizer_auto_filetype='css,html'
else
	set mouse=a
	set ttymouse=xterm2 " Alacritty mouse selection fix
	colorscheme 8monkeys
	let g:airline_theme = "termite"
endif

" Terminal truecolor fix (can't make it work)
"let colorterm=$COLORTERM
"if colorterm=='truecolor'
"	set termguicolors
"	let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
"	let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
"endif

" --------------------
" PLUGINS
" --------------------
" Colorizer - hex color codes plugin
let g:colorizer_colornames = 0

" --- Supertab ---
let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-n>"
autocmd FileType *
	\ if &omnifunc != '' |
	\ 	call SuperTabChain(&omnifunc, "<c-n>") |
	\ endif

" --- CtrlP Plugin ---
let g:ctrlp_cmd = 'CtrlP ~'
set wildignore+=*/.mozilla/*,*/.cache/*,*/.git/*,*/.gnupg/*,*/.local/*,*/.config/vivaldi/*,*/wine64/*,*/wine32/*
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'results:30'
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_tabpage_position = 'al'
"let g:ctrlp_working_path_mode = '0'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'min:2'
let g:ctrlp_types = ['fil', 'mru', 'buf']
let g:ctrlp_max_depth = 8
let g:ctrlp_open_new_file = 't' "t h v r
let g:ctrlp_mruf_max = 100
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'
let g:ctrlp_prompt_mappings = {
\ 'ToggleType(1)':  ['<c-right>'],
\ 'ToggleType(-1)': ['<c-left>'],
\ 'PrtHistory(-1)': ['<c-down>'],
\ 'PrtHistory(1)':  ['<c-up>'],
\ }

" --- Airline Plugin ---
let g:airline_disable_statusline = 0
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_extensions = ['ctrlp', 'tabline']
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_left_alt_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_left_sep='▒░'
let g:airline_right_sep='░▒'
let g:airline_left_alt_sep = '░'
let g:airline_right_alt_sep = '░'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.crypt = 'Cr'
let g:airline_symbols.paste = 'P:'
let g:airline_symbols.spell = 'S:'
let g:airline_symbols.notexists = '¿?'
let g:airline_symbols.whitespace = '__'
let g:airline_symbols.dirty='d!'
let g:airline_inactive_alt_sep=0
let g:airline_highlighting_cache = 1 "1 is experimental (faster)

"let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_sep='▒░'
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#overflow_marker = '…'
let g:airline#extensions#tabline#show_close_button=0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_splits=0

" --------------------
" HOTKEYS
" --------------------
nmap <F1> <nop>
imap <F1> <nop>
cmap <F1> <nop>
vmap <F1> <nop>

map ; :

nnoremap Q q
nnoremap q <Nop>

nnoremap <silent> <CR> :nohlsearch<CR><CR>

" Open the cheatsheet
nnoremap <leader>/ <Esc>:tabnew<CR>:e ~/.vim/cheatsheet.txt<CR>

" Open explorer
nnoremap <F1> :Ex<CR>
inoremap <F1> <Esc>:Ex<CR>

" Colorize hex codes
nnoremap zc :ColorToggle<CR>

" Toggle CtrlP plugin
nnoremap <C-f> <Esc>:CtrlP ~<CR>

" Sycle through vim colorschemes (ScrollColor.vim plugin)
map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>

" Treat long lines as break lines
map j gj
map k gk

" Scrolling & other movement
noremap <S-j> 12<C-e>M
noremap <S-k> 12<C-y>M
noremap <A-j> <C-d>M
noremap <A-k> <C-u>M
nnoremap <C-h> <C-Left>
nnoremap <C-l> <C-Right>
inoremap <C-h> <Esc>Bi
inoremap <C-l> <Esc>lWi
inoremap <C-Backspace> <Esc>dbi
noremap - $

" Mouse wheel
map <ScrollWheelUp> 12<C-y>
map <ScrollWheelDown> 12<C-e>

" Copy & Paste from clipboard
vnoremap <C-c> "+y
inoremap <C-v> <C-R>+

" Windows & Tabs
nnoremap <leader>t <Esc>:tabnew<CR>
nnoremap <leader>[ <Esc>:tabp<CR>
nnoremap <leader>] <Esc>:tabn<CR>
nnoremap <leader>. <Esc>:bnext<CR>
nnoremap <leader>, <Esc>:bprev<CR>

nnoremap <leader>s <Esc>:new<CR>
nnoremap <leader>v <Esc>:vnew<CR>
nnoremap <leader><S-s> <Esc>:split<CR>
nnoremap <leader><S-v> <Esc>:vsplit<CR>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

" Equalize splits
nnoremap <leader>e <C-W>=

" Move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Diffthis
nnoremap <silent> di :call ToggleDiff()<CR>
function ToggleDiff ()
	if (&diff)
		set nodiff noscrollbind
	else
		" Enable diff options in both windows; balance the sizes, too
		wincmd =
		set diff scrollbind
		wincmd w
		set diff scrollbind
		wincmd w
	endif
endfunction

" Folds
nnoremap zs :mkview<CR>
nnoremap zl :loadview<CR>

" Urls
noremap <leader>u :w<Home>silent <End> !urlscan<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Show syntax highlighting groups for word under cursor
nmap <C-S-s> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" The font selector
noremap <F4> :set guifont=*<CR>

" Do not move cursor avter visual yanking
vmap y ygv<Esc>

" Paste without overwriting register
	" This supports "rp that replaces the selection by the contents of @r
vnoremap <silent> <expr> p <sid>Repl()

" --------------------
" MISC STUFF
" --------------------
" .viminfo file location change
set viminfo=%,<800,'5,/30,:50,h,n~/.vim/.viminfo
"           | |    |   |   |  | + viminfo file path
"           | |    |   |   |  |
"           | |    |   |   |  + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list

" Sspecial characters...
set showbreak=↪
set listchars=tab:‧‧,nbsp:¬,trail:◇,extends:›,precedes:‹
set list

" Make the 80th char of a wide line stand out
	call matchadd('ColorColumn', '\%80v', 100)

" Hybrid line numbering +absolute numbering in insert & unfocused
set number relativenumber
set cursorline cursorlineopt=number " Line highlighting (number only)
"set cursorline "Line highlighting
"set cursorcolumn "Column highlighting
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal! g`\"" |
	\ endif
" Remember info about open buffers on close
set viminfo^=%

" Always show the status line
set laststatus=2
" Format the status line
set statusline=%F%m%r%h%w\ %=%Y\ -\ %{&ff}\ -\ line:\ %l/%L\ -\ %p%%

" Paste without overwriting register
" I haven't found how to hide this function (yet)
function! RestoreRegister()
	let @" = s:restore_reg
	return ''
endfunction

function! s:Repl()
	let s:restore_reg = @"
	return "p@=RestoreRegister()\<cr>"
endfunction

" Mutt
autocmd BufNewFile,BufRead /tmp/mutt* set filetype=mail wm=0 tw=72 nonumber digraph nolist
autocmd BufNewFile,BufRead ~/tmp/mutt* set filetype=mail wm=0 tw=72 nonumber digraph nolist
