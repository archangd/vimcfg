let mapleader = ","
scriptencoding utf-8
set encoding=utf-8
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
Plugin 'Yggdroot/indentLine'
Plugin 'Raimondi/delimitMate'
" JavaScript bundles
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'
" Python bundles
Plugin 'klen/python-mode'

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
"  syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_enable_balloons = 1
let g:syntastic_loc_list_height = 5

let g:syntastic_javascript_jshint_args = "-c ~/.vim/conf/jshint.json"
let g:ycm_show_diagnostics_ui = 0
"  YouCompleteMe
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
"  indentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '│'
let g:indentLine_color_term = 'darkgrey'
"  delimitMate
let g:delimitMate_expand_cr = 1
" python-mode
let g:pymode = 1
let g:pymode_warnings = 0
let g:pymode_indent = 1
let g:pymode_folding = 0
let g:pymode_python = 'python3'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
syntax on
set background=dark
colorscheme distinguished
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:│\ ,trail:X
set noexpandtab
set number

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
vnoremap jk <esc>
inoremap kj <esc>
vnoremap kj <esc>

nnoremap <esc> <nop>
inoremap <esc> <nop>
vnoremap <esc> <nop>
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
	autocmd FileType html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
augroup END

augroup javascript
	autocmd!
	autocmd FileType javascript let b:delimitMate_matchpairs = "(:),[:],{:}"
augroup END
