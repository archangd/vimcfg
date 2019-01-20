let mapleader = ","
let maplocalleader = "\\"
scriptencoding utf-8
set encoding=utf-8
set fencs=utf-8,gbk
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Configuration
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Common bundles
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'Yggdroot/indentLine'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'Konfekt/FastFold'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" JavaScript bundles
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'othree/javascript-libraries-syntax.vim'
" Python bundles
Plugin 'klen/python-mode'
Plugin 'szymonmaszke/vimpyter'
" TeX bundles
Plugin 'lervag/vimtex'
Plugin 'hura/vim-asymptote'
" Racket
Plugin 'wlangstroth/vim-racket'
" Agda
Plugin 'derekelkins/agda-vim'
" Solidity
Plugin 'tomlion/vim-solidity'


call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Bundles' Configurations:
"  air-line
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
"  syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_enable_balloons = 1
let g:syntastic_loc_list_height = 5

let g:syntastic_javascript_checkers=['eslint']
let g:ycm_show_diagnostics_ui = 0

"  YouCompleteMe
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
"  indentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
let g:indentLine_color_term = 'darkgrey'
"  delimitMate
let g:delimitMate_expand_cr = 1
" python-mode
let g:pymode = 1
let g:pymode_warnings = 0
let g:pymode_indent = 1
let g:pymode_folding = 0
let g:pymode_python = 'python3'
" racket
let g:syntastic_enable_racket_racket_checker = 1
" vimtex
let g:tex_flavor = "latex"
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:tex_conceal = ''
" vim-json
let g:vim_json_syntax_conceal = 0
" fastfold
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax on
set background=dark
colorscheme distinguished
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
"set tabstop=4
"set shiftwidth=4
"set noexpandtab
set list
set listchars=tab:│\ ,trail:X
set number relativenumber
set hlsearch
set splitright
set splitbelow
" folding
set foldmethod=manual
set nofoldenable
"indent
set cinoptions+=:0

"YCM jump
nnoremap <leader>jj :YcmCompleter GoTo<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jc :YcmCompleter GoToDeclaratio<CR>


" Inspired by 'Learn Vimscript the Hard Way'
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`>l
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>`>l

nnoremap <leader>a :lprevious<cr>
nnoremap <leader>f :lnext<cr>

nnoremap H I<esc>
nnoremap L A<esc>

inoremap jk <esc>

" inoremap <esc> <nop>
nnoremap <up> <nop>
inoremap <up> <nop>
vnoremap <up> <nop>
nnoremap <right> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>
nnoremap <left> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
nnoremap <down> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <leader>n :nohls<cr>

nnoremap <leader>x :bn<cr>
nnoremap <leader>z :bp<cr>
nnoremap <leader>d :bd<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specialized configurations
augroup python
	autocmd!
	" highlight characters past column 80
	autocmd FileType python highlight Excess ctermbg = DarkGrey guibg = Black
	autocmd FileType python match Excess /\%80v.*/
	autocmd FileType python setlocal nowrap
	autocmd FileType python setlocal tabstop=4
	autocmd FileType python setlocal shiftwidth=4
	autocmd FileType python setlocal expandtab
	autocmd FileType python let b:syntastic_mode = 'passive'
	autocmd FileType python let b:delimitMate_matchpairs = "(:),[:],{:}"
augroup END

augroup vim
	autocmd!
	autocmd FileType vim let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
augroup END

augroup html
	autocmd!
	autocmd FileType html setlocal nowrap
	autocmd FileType html setlocal tabstop=2
	autocmd FileType html setlocal shiftwidth=2
	autocmd FileType html setlocal noexpandtab
	autocmd FileType html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
augroup END

augroup javascript
	autocmd!
	autocmd FileType javascript let b:delimitMate_matchpairs = "(:),[:],{:}"
augroup END

augroup tex
	autocmd!
	" highlight characters past column 80
	autocmd FileType tex setlocal nowrap
	autocmd FileType tex setlocal tabstop=2
	autocmd FileType tex setlocal shiftwidth=2
	autocmd FileType tex setlocal expandtab
    autocmd FileType tex let b:delimitMate_quotes = "\" ' $"
	autocmd FileType tex let b:delimitMate_matchpairs = "(:),[:],{:}"
	autocmd FileType tex highlight Excess ctermbg = DarkGrey guibg = Black
	autocmd FileType tex match Excess /\%80v.*/
augroup END

augroup agda
	autocmd!
	" highlight characters past column 80
	autocmd FileType agda setlocal nowrap
	autocmd FileType agda setlocal tabstop=2
	autocmd FileType agda setlocal shiftwidth=2
	autocmd FileType agda setlocal expandtab
	autocmd FileType agda highlight Excess ctermbg = DarkGrey guibg = Black
	autocmd FileType agda match Excess /\%80v.*/
augroup END

call pymode#default('g:pymode_rope_autoimport', 0)

set exrc
set secure
