"-----------------------
" ICPC only config
" command! -nargs=* InitICPC :call InitICPC(<args>)
" function! InitICPC(...)
" 	set filetype=cpp
" 	if a:0 == 0 || a:1 == 0
" 		call LoadFile($HOME . '/temp_d.cpp', 43)
" 	endif
" endfunction
" function! LoadFile(filename, stoploc)
" 	normal ggdG
" 	exec 'r ' . a:filename
" 	normal ggdd
" 	exec '' . a:stoploc
" 	normal zz$
" endfunction


"-----------------------
" default config
let mapleader=','
set rnu
set nu
set smarttab
set autochdir
set autoread
set incsearch
set wildmenu
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
set winaltkeys=no
set encoding=utf-8
set termencoding=utf-8
set t_Co=256
set history=1000
set ruler
set autoindent
set smartindent
set visualbell t_vb=
"set cursorline
set mouse=a
set tabstop=4
set expandtab
set shiftwidth=4
set linespace=0
set laststatus=2
set cmdheight=1
set showtabline=1
"set showtabline=2
set noshowmode
set hidden
"set signcolumn=yes
set updatetime=300
syntax enable
syntax on
set foldmethod=syntax
set foldlevel=99
nnoremap ` za
"--------------------------
" wrong ignore
nnoremap 0- $
nnoremap 00 0
"nnoremap j gj
"nnoremap k gk
nnoremap Q :qa<CR>
:command! Q :q
:command! W :w
:command! Wq :wq
:command! WQ :wq
:command! -nargs=1 Vresize :vertical resize <args>

colorscheme monokai2

"---------------------------
" Plugin
" Specify a directory for plugins
" call plug#begin('~/vimfiles/plugged')
" 	Plug 'ervandew/supertab'
" 	Plug 'junegunn/vim-easy-align'
" 	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" 	Plug 'Xuyuanp/nerdtree-git-plugin'
" 	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" 	Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" 	Plug 'itchyny/lightline.vim'
" 	Plug 'tpope/vim-fugitive'
" 	Plug 'zefei/vim-wintabs'
" 	Plug 'zefei/vim-wintabs-powerline'
" call plug#end()
" 
" "---------------------------
" " Config
" " SuperTab
" let g:SuperTabDefaultCompletionType = "<c-n>"
" 
" "---------------------------
" " Config
" " NERDTree
" let g:NERDTreeNaturalSort = 1
" let g:NERDTreeShowBookmarks = 1
" let g:NERDTreeShowHidden = 1
" let g:NERDTreeWinSize = 25
" let g:NERDTreeMinimalUI = 1
" let g:NERDTreeMinimalMenu = 1
" let g:NERDTreeQuitOnOpen = 1
" nnoremap <silent> <Tab><Space> :NERDTreeToggle<CR>:call lightline#enable()<CR>
" let g:NERDTreeIndicatorMapCustom = {
" 			\ "Modified"  : "✹",
" 			\ "Staged"    : "✚",
" 			\ "Untracked" : "✭",
" 			\ "Renamed"   : "➜",
" 			\ "Unmerged"  : "═",
" 			\ "Deleted"   : "✖",
" 			\ "Dirty"     : "✗",
" 			\ "Clean"     : "✔︎",
" 			\ 'Ignored'   : '☒',
" 			\ "Unknown"   : "?"
" 			\ }
" 
" "---------------------------
" " Config
" " LightLine
" let g:lightline = {
" 			\ 'colorscheme': 'jellybeans',
" 			\ 'component': {
" 			\   'lineinfo': ' %3l:%-2v',
" 			\ },
" 			\ 'component_function': {
" 			\   'readonly': 'LightlineReadonly',
" 			\   'fugitive': 'LightlineFugitive',
" 			\ },
" 			\ 'separator': { 'left': '', 'right': '' },
" 			\ 'subseparator': { 'left': '', 'right': '' },
" 			\ 'active': {
" 			\   'left': [ [ 'mode', 'filename', 'readonly' ],
" 			\             [ 'fugitive' ],
" 			\             [ 'modified' ] ],
" 			\   'right': [ [ 'percent' ], [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype'] ],
" 			\ },
" 			\ 'inactive': {
" 			\   'left': [ [ 'filename' ] ],
" 			\   'right': [ ],
" 			\ },
" 			\ 'tab': {
" 			\   'active': [ 'filename', 'modified' ],
" 			\   'inactive': [ 'filename', 'modified' ],
" 			\ },
" 			\ 'tabline': {
" 			\   'right': [ ],
" 			\ },
" 			\ }
" function! LightlineReadonly()
" 	return &readonly ? '' : ''
" endfunction
" function! LightlineFugitive()
" 	if exists('*FugitiveHead')
" 		let branch = FugitiveHead()
" 		return branch !=# '' ? ' '.branch : ''
" 	endif
" 	return ''
" endfunction

"---------------------------
" Config
" wintabs
" 大部分功能都被tab顶掉了。buffer还是不如tab好用.
" let g:wintabs_display = 'none'
" let g:wintabs_autoclose = 2
" let g:wintabs_powerline_arrow_left = " \u25c0 "
" let g:wintabs_powerline_arrow_right = " \u25b6 "
" let g:wintabs_powerline_sep_buffer_transition = ""
" let g:wintabs_powerline_sep_buffer = ""
" let g:wintabs_powerline_sep_tab_transition = ""
" let g:wintabs_powerline_sep_tab = ""
" 
" highlight link WintabsEmpty LightlineLeft_normal_2
" highlight link WintabsActive LightlineLeft_normal_0
" highlight link WintabsInactive LightlineLeft_normal_tabsel
" highlight link WintabsArrow LightlineLeft_normal_0
" highlight link WintabsActiveNC LightlineLeft_normal_tabsel_1
" highlight link WintabsInactiveNC LightlineLeft_normal_tabsel_2

noremap <tab><tab>p :WintabsPrevious<CR>
noremap <tab><tab>n :WintabsNext<CR>
noremap <tab><tab>q :WintabsClose<CR>
noremap <tab><tab>u :WintabsUndo<CR>
noremap <tab><tab>o :WintabsOnly<CR>
noremap <tab><tab>Q :WintabsCloseWindow<CR>
noremap <tab><tab>O :WintabsOnlyWindow<CR>
noremap <tab>e :tabnew<CR>
noremap <tab>n :tabnext<CR>
noremap <tab>p :tabprev<CR>
noremap <tab>q :q<CR>
noremap <tab>t :vertical term<CR>
noremap <tab>v <C-W>v
noremap <tab>s <C-W>s
noremap <tab>h <C-W>h
noremap <tab>j <C-W>j
noremap <tab>k <C-W>k
noremap <tab>l <C-W>l
noremap <tab>w <C-W>w


"---------------------------
" Config
" EasyAlign
" xmap <silent> ga <Plug>(EasyAlign)
" nmap <silent> ga <Plug>(EasyAlign)
" 
" "--------------------------------------------------------------------------
" " Config
" " COC
" " refresh using c-space ---------------------------
" inoremap <silent><expr> <c-space> coc#refresh()
" 
" " smart cr ----------------------------------------
" if has('patch8.1.1068')
"   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" else
"   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" endif
" 
" " jump to next error using space ------------------
" nmap <silent> <F8> <Plug>(coc-diagnostic-next)
" 
" " Remap keys for gotos ----------------------------
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" 
" " Use K to show documentation in preview window ---
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" function! s:show_documentation()
" 	if (index(['vim','help'], &filetype) >= 0)
" 		execute 'h '.expand('<cword>')
" 	else
" 		call CocAction('doHover')
" 	endif
" endfunction

" Highlight symbol under cursor on CursorHold -----
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word -------------------
" nmap <leader>rn <Plug>(coc-rename)


"------------------------------------------------------------------------
" session control
" if !exists("*MakeSession")
" 	function! MakeSession()
" 		set sessionoptions=blank,curdir,folds,help,localoptions,options,tabpages,winsize,terminal
" 		" set sessionoptions=blank,buffers,curdir,folds,help,localoptions,options,tabpages,winsize,terminal
" 		let b:sessionfile = $HOME . "/.vim/session.vim"
" 		exe "mksession! " . b:sessionfile
" 	endfunction
" 
" 	function! LoadSession()
" 		let b:sessionfile = $HOME . "/.vim/session.vim"
" 		if (filereadable(b:sessionfile))
" 			exe 'source ' b:sessionfile
" 			exe 'silent source ~/_vimrc'
" 		else
" 			echo "No session loaded."
" 		endif
" 	endfunction
" endif

" Adding automatons for when entering or leaving Vim
" if argc() == 0
" 	" augroup
" 	au VimEnter * nested :call LoadSession()
" 	au VimLeave * :tabdo if exists(':NERDTreeClose') | NERDTreeClose | endif
" 	au VimLeave * :call MakeSession()
" endif

"------------------------------------------------------------------------
" autogroup
" augroup ag1
" 	autocmd! CompleteDone * pclose "pclose when complete done
" 	autocmd! BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "quit when only nerdtree
" augroup end

"---------------------------------
" GUI
if has('gui_running')
	set guioptions-=m  "remove menu bar
	set guioptions-=T  "remove toolbar
	set guioptions-=r  "remove right-hand scroll bar
	set guioptions-=L  "remove left-hand scroll bar
	set guioptions-=M  "remove left-hand scroll bar
	set guioptions-=b
	set guioptions-=e
	set nolist
	set guifont=Sarasa\ Term\ SC:h16
	if has("win32")
		autocmd! GUIEnter * simalt ~x
	endif
endif

if maparg("q")
	unmap! q
endif

