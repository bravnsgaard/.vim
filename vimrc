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

