
"   /$$    /$$ /$$                    /$$$$$$                       /$$$$$$  /$$
"  | $$   | $$|__/                   /$$__  $$                     /$$__  $$|__/
"  | $$   | $$ /$$ /$$$$$$/$$$$     | $$  \__/  /$$$$$$  /$$$$$$$ | $$  \__/ /$$  /$$$$$$
"  |  $$ / $$/| $$| $$_  $$_  $$    | $$       /$$__  $$| $$__  $$| $$$$    | $$ /$$__  $$
"   \  $$ $$/ | $$| $$ \ $$ \ $$    | $$      | $$  \ $$| $$  \ $$| $$_/    | $$| $$  \ $$
"    \  $$$/  | $$| $$ | $$ | $$    | $$    $$| $$  | $$| $$  | $$| $$      | $$| $$  | $$
"     \  $/   | $$| $$ | $$ | $$    |  $$$$$$/|  $$$$$$/| $$  | $$| $$      | $$|  $$$$$$$
"      \_/    |__/|__/ |__/ |__/     \______/  \______/ |__/  |__/|__/      |__/ \____  $$
"                                                                                /$$  \ $$
"                                                                               |  $$$$$$/
"  Only the cool kids have this :)                                               \______/

set nocompatible
set background=dark
set incsearch
set hlsearch
set ignorecase
set title
set ruler
set encoding=utf-8
set fileencodings=utf-8
set ffs=unix,dos,mac "Use Unix as the standard file type
set scrolloff=1 "Cursor leaves space when scrolling
set wildmenu "Menu completion on Tab
set wildmode=list:longest,full
syntax on
filetype on
filetype plugin on
autocmd Filetype python setlocal ts=8 sw=8 sts=0 noexpandtab
set notimeout ttimeout ttimeoutlen=0
"set hidden "When I close a tab, remove the buffer
set wrap "Line wrap
set showcmd "This shows what you are typing as a command
set showmatch "Show matching brackets when text indicator is over them
set mat=2 "How many tenths of a second to blink when matching brackets
set splitbelow "New split is below
set splitright "New vsplit is to the right
set diffopt=vertical "diff in vertical split by default
set tabstop=8 "Number of spaces of a tab
set shiftwidth=8 "The size of an indent
set noet sts=0 "Disables tab as real space characters
set noci nopi "Auto indent disabling for copy and paste
set noautoindent
set nosmartindent
set omnifunc=syntaxcomplete#Complete "Set the omnicomplete function
set completeopt=longest,menuone "Set popup menu

" Enables current cursor line/column highlighting
"set cursorline
"set cursorcolumn

" ### Colorscheme stuff ###
let g:gruvbox_italic = 0
let g:gruvbox_underline = 0
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_number_column = 'dark1'
let g:gruvbox_sign_column = 'dark1'
let g:gruvbox_invert_selection = 0

if has('gui_running')
	set guifont=droopy\ Medium\ 12
	"set guifont=VGA\ 14
	"set guifont=Ubuntu\ Mono\ 13
	"set guifontwide=IPAGothic\ 10
	set guifontwide=mplus\ Medium\ 12
	set guioptions-=T
	set guioptions-=e
	set lines=60 columns=96
	set guiheadroom=1
	" let g:lightline = {
	" 	\ 'colorscheme': 'default',
	" 	\ }

	" Key to select completions.  Default is arrow keys.
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
	inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
	inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
	" Key to trigger auto completion.
	inoremap <expr> <S-Space> Tab_Or_Complete()
	inoremap <expr> <C-Space> Tab_Or_Complete()
	" Key to exit autocompletion menu
	inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
	" Key to accept item
	inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

	let g:airline_theme = "copycat"

	colorscheme sourcerer
else
	set mouse=a
	colorscheme fromthehell
	let g:airline_theme = "jet"
endif

" If colorscheme is gruvbox - set airline theme to same
if g:colors_name == "gruvbox"
	let g:airline_theme = "gruvbox"
endif

" #################
" #### Plugins ####
" #################

" ### CtrlP Plugin ###
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

" ### NERDTree Plugin ###
let NERDTreeMinimalUI = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeMapToggleHidden='h'
let g:NERDTreeMapToggleBookmarks='b'

" ### Airline Plugin ###
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.crypt = 'Cr'
let g:airline_symbols.paste = 'P:'
let g:airline_symbols.spell = 'S:'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = '⦀'
let g:airline_inactive_alt_sep=0
"let g:airline_section_b = '%-0.10{getcwd()}'
"let g:airline_section_c = '%t'
let g:airline_extensions = ['ctrlp', 'syntastic', 'tabline']
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''
"let g:airline#extensions#tabline#tab_min_count=2
"let g:airline#extensions#tabline#buffer_min_count=1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_splits=1
let g:airline#extensions#tabline#show_close_button=0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <C-W>1 <Plug>AirlineSelectTab1
nmap <C-W>2 <Plug>AirlineSelectTab2
nmap <C-W>3 <Plug>AirlineSelectTab3
nmap <C-W>4 <Plug>AirlineSelectTab4
nmap <C-W>5 <Plug>AirlineSelectTab5
nmap <C-W>6 <Plug>AirlineSelectTab6
nmap <C-W>8 <Plug>AirlineSelectTab8
nmap <C-W>9 <Plug>AirlineSelectTab9
nmap <C-W>- <Plug>AirlineSelectPrevTab
nmap <C-W>= <Plug>AirlineSelectNextTab
" let g:airline_theme='XX'  "overrides auto theme switcher

" ### Syntastic Pludin ###
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let airline#extensions#syntastic#error_symbol = ''

" ### Completor Plugin ###
let g:completor_completion_delay = 80
let g:completor_auto_trigger = 0

" Complete when typing words, else inserts TABs.  Uses
" dictionary, source files, and completor to find matching words to complete.
" Note: usual completion is on <C-n> but more trouble to press all the time.
" Never type the same word twice and maybe learn a new spellings!
" Use the Linux dictionary when spelling is in doubt.
function! Tab_Or_Complete() abort
	" If completor is already open the `tab` cycles through suggested completions.
	if pumvisible()
		return "\<C-N>"
	" If completor is not open and we are in the middle of typing a word then
	" `tab` opens completor menu.
	elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		return "\<C-R>=completor#do('complete')\<CR>"
	else
		" If we aren't typing a word and we press `tab` simply do the normal `tab`
		" action.
		return "\<Tab>"
	endif
endfunction

" Disable automatic commenting on newline
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" ### Devicons plugin ###
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
if has('gui_running')
	let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
else
	let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
endif

" Goyo custom callbacks
function! s:goyo_enter()
	:set nonumber norelativenumber
endfunction

function! s:goyo_leave()
	:set number relativenumber
	:augroup numbertoggle
		:autocmd!
		:autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
		:autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
	:augroup END
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" #################
" #### Hotkeys ####
" #################

:nmap <F1> <nop>
:imap <F1> <nop>
:cmap <F1> <nop>
:vmap <F1> <nop>

" Toggle NERDTree on/off
nnoremap <F4> :NERDTreeToggle<cr>
inoremap <F4> <Esc>:NERDTreeToggle<cr>
" Sycle through vim colorschemes (ScrollColor.vim plugin)
map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>
" Set dark/light colorscheme type
noremap <silent><F5>
	\ :set background=dark<cr>
	\ :let g:gruvbox_number_column = 'dark1'<cr>
	\ :let g:gruvbox_sign_column = 'dark1'<cr>
noremap <silent><F6>
	\ :set background=light<cr>
	\ :let g:gruvbox_number_column = 'light1'<cr>
	\ :let g:gruvbox_sign_column = 'light1'<cr>

" Toggle Goyo
nnoremap <C-D> :Goyo<CR>
inoremap <C-D> <Esc>:Goyo<CR>i

" Paste from clipboard in insert mode
inoremap <C-V> <C-R>+

noremap <S-J> <C-D>
noremap <S-K> <C-U>
"noremap <C-J> <PageDown>
"noremap <C-K> <PageUp>
noremap - $
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" Windows & Tabs
nnoremap <C-W>t <Esc>:tabnew<CR>
nnoremap <C-W>[ <Esc>:tabp<CR>
nnoremap <C-W>] <Esc>:tabn<CR>
nnoremap <C-W>. <Esc>:bnext<CR>
nnoremap <C-W>, <Esc>:bprev<CR>

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

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Mouse wheel speedup hack
:map <ScrollWheelUp> 16<C-Y>
:map <ScrollWheelDown> 16<C-E>

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Create brackets
inoremap ] ]<Esc>i
inoremap } }<Esc>i
inoremap ) )<Esc>i

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
"map N Nzz
"map n nzz

" Show syntax highlighting groups for word under cursor
nmap <C-S-s> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

	" NB: this supports "rp that replaces the selection by the contents of @r
vnoremap <silent> <expr> p <sid>Repl()

" ####################
" #### Misc Stuff ####
" ####################

" tab and trailing chars...
"set listchars=tab:❭‧,nbsp:¬,trail:◇
set listchars=tab:‧‧,nbsp:¬,trail:◇
set list

" Make the 80th char of a wide line stand out
call matchadd('ColorColumn', '\%80v', 100)

" hybrid line numbering +absolute numbering in insert & unfocused
:set number relativenumber
:augroup numbertoggle
:	autocmd!
:	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END

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

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

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

" visual block dragging
" runtime plugin/dragvisuals.vim
" vmap  <expr>  <S-LEFT>   DVB_Drag('left')
" vmap  <expr>  <S-RIGHT>  DVB_Drag('right')
" vmap  <expr>  <S-DOWN>   DVB_Drag('down')
" vmap  <expr>  <S-UP>     DVB_Drag('up')
" let g:DVB_TrimWS = 1
