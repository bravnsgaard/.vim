set nocompatible
syntax on
filetype plugin indent on

if has('gui_running')
	set mousehide
endif

set background=light
colorscheme solarized

set cmdheight=2
set hlsearch

set guifont=Cousine\ for\ Powerline\ 10

" Airline setup
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#checks =
	\ [ 'indent', 'long', 'mixed-indent-file' ]

" Use Q for gq
map Q gq
inoremap <C-U> <C-G>u<C-U>

" map :ClangFormat to <C-Q>
map <C-Q> :ClangFormat<CR>
imap <C-Q> <c-o>:ClangFormat<CR>

" map <C-P> to call :FZF in normal mode
nnoremap <C-P> :<C-U>FZF<CR>

" Configure vim-rooter
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_silent_chdir = 1

" configure unimpaired-like mappings for ALE
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" Use æ and ø for [ and ]
nmap æ [
nmap ø ]
omap æ [
omap ø ]
xmap æ [
xmap ø ]

