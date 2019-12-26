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

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'long', 'mixed-indent-file' ]

