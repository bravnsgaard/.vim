set nocompatible
syntax on
filetype plugin indent on

if has('gui_running')
	set mousehide
endif

set background=dark
colorscheme solarized

set cmdheight=2
set hlsearch

set guifont=Comic\ Code\ Regular\ 11

" Airline setup
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#checks =
	\ [ 'indent', 'long', 'mixed-indent-file' ]

" Use Q for gq
map Q gq
inoremap <C-U> <C-G>u<C-U>

let g:clang_format#command = '/home/brian/.local/bin/clang-format'
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

" autocmd VimEnter * call coc#config('languageserver.clangd.disableDiagnostics', v:true)
set updatetime=300
set shortmess+=c

inoremap <silent><expr> <TAB>
			\ coc#pum#visible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <C-space> coc#refresh()

inoremap <expr> <CR> coc#pum#visible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use æ and ø for [ and ]
nmap æ [
nmap ø ]
omap æ [
omap ø ]
xmap æ [
xmap ø ]

