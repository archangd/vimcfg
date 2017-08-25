let mapleader = ","
let maplocalleader = "\\"
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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'ConradIrwin/vim-bracketed-paste'
" JavaScript bundles
Plugin 'othree/yajs.vim'
Plugin 'pangloss/vim-javascript'
Bundle 'elzr/vim-json'
" Python bundles
Plugin 'klen/python-mode'
" TeX bundles
Plugin 'lervag/vimtex'
Plugin 'hura/vim-asymptote'
" Racket
Plugin 'wlangstroth/vim-racket'
" Agda
Plugin 'derekelkins/agda-vim'

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

let g:syntastic_javascript_jshint_args = "-c ~/.vim/conf/jshint.json"
let g:ycm_show_diagnostics_ui = 0
"  YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python'
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
" racket
let g:syntastic_enable_racket_racket_checker = 1
" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:tex_conceal = ''
" vim-json
let g:vim_json_syntax_conceal = 0
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
set hlsearch

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

inoremap <esc> <nop>
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

augroup racket
	autocmd!
	autocmd FileType racket setlocal nowrap
	autocmd FileType racket setlocal tabstop=2
	autocmd FileType racket setlocal shiftwidth=2
	autocmd FileType racket setlocal expandtab
	autocmd FileType racket let b:delimitMate_matchpairs = "(:),[:],{:}"
	autocmd FileType racket let delimitMate_quotes = "\""
	" Combining marks
	autocmd FileType racket imap <LocalLeader>over`  ̀
	autocmd FileType racket imap <LocalLeader>over'  ́
	autocmd FileType racket imap <LocalLeader>over^  ̂
	autocmd FileType racket imap <LocalLeader>overv  ̌
	autocmd FileType racket imap <LocalLeader>over~  ̃
	autocmd FileType racket imap <LocalLeader>over-  ̄
	autocmd FileType racket imap <LocalLeader>over_  ̅
	autocmd FileType racket imap <LocalLeader>over–  ̅
	autocmd FileType racket imap <LocalLeader>over—  ̅
	autocmd FileType racket imap <LocalLeader>overcup  ̆
	autocmd FileType racket imap <LocalLeader>overcap  ̑
	autocmd FileType racket imap <LocalLeader>over.  ̇
	autocmd FileType racket imap <LocalLeader>over..  ̈
	autocmd FileType racket imap <LocalLeader>over"  ̈
	autocmd FileType racket imap <LocalLeader>over...  ⃛
	autocmd FileType racket imap <LocalLeader>overright.  ͘
	autocmd FileType racket imap <LocalLeader>overo  ̊
	autocmd FileType racket imap <LocalLeader>over``  ̏
	autocmd FileType racket imap <LocalLeader>over''  ̋
	autocmd FileType racket imap <LocalLeader>overvec  ⃑
	autocmd FileType racket imap <LocalLeader>vec  ⃑
	autocmd FileType racket imap <LocalLeader>overlvec  ⃐
	autocmd FileType racket imap <LocalLeader>lvec  ⃐
	autocmd FileType racket imap <LocalLeader>overarc  ⃕
	autocmd FileType racket imap <LocalLeader>overlarc  ⃔
	autocmd FileType racket imap <LocalLeader>overto  ⃗
	autocmd FileType racket imap <LocalLeader>overfrom  ⃖
	autocmd FileType racket imap <LocalLeader>overfromto  ⃡
	autocmd FileType racket imap <LocalLeader>over*  ⃰
	autocmd FileType racket imap <LocalLeader>under`  ̖
	autocmd FileType racket imap <LocalLeader>under'  ̗
	autocmd FileType racket imap <LocalLeader>under,  ̗
	autocmd FileType racket imap <LocalLeader>under.  ̣
	autocmd FileType racket imap <LocalLeader>under..  ̤
	autocmd FileType racket imap <LocalLeader>under"  ̤
	autocmd FileType racket imap <LocalLeader>undero  ̥
	autocmd FileType racket imap <LocalLeader>under-  ̱
	autocmd FileType racket imap <LocalLeader>under_  ̲
	autocmd FileType racket imap <LocalLeader>under–  ̲
	autocmd FileType racket imap <LocalLeader>under—  ̲
	autocmd FileType racket imap <LocalLeader>through~  ̴
	autocmd FileType racket imap <LocalLeader>through-  ̵
	autocmd FileType racket imap <LocalLeader>through_  ̶
	autocmd FileType racket imap <LocalLeader>through–  ̶
	autocmd FileType racket imap <LocalLeader>through—  ̶
	autocmd FileType racket imap <LocalLeader>through/  ̷
	autocmd FileType racket imap <LocalLeader>not  ̷
	autocmd FileType racket imap <LocalLeader>through?  ̸
	autocmd FileType racket imap <LocalLeader>Not  ̸
	autocmd FileType racket imap <LocalLeader>through\|  ⃒
	autocmd FileType racket imap <LocalLeader>throughshortmid  ⃓
	autocmd FileType racket imap <LocalLeader>througho  ⃘
	" Math
	autocmd FileType racket imap <LocalLeader>: ∶
	autocmd FileType racket imap <LocalLeader>:: ∷
	autocmd FileType racket imap <LocalLeader>;  ﹔
	autocmd FileType racket imap <LocalLeader>.. ‥
	autocmd FileType racket imap <LocalLeader>=? ≟
	autocmd FileType racket imap <LocalLeader>all ∀
	autocmd FileType racket imap <C-a> ∀
	autocmd FileType racket imap <LocalLeader>always □
	autocmd FileType racket imap <LocalLeader>approx ≈
	autocmd FileType racket imap <LocalLeader>bot ⊥
	autocmd FileType racket imap <LocalLeader>box □
	autocmd FileType racket imap <LocalLeader>boxdot ⊡
	autocmd FileType racket imap <LocalLeader>box. ⊡
	autocmd FileType racket imap <LocalLeader>boxminus ⊟
	autocmd FileType racket imap <LocalLeader>box- ⊟
	autocmd FileType racket imap <LocalLeader>boxplus ⊞
	autocmd FileType racket imap <LocalLeader>box+ ⊞
	autocmd FileType racket imap <LocalLeader>boxtimes ⊠
	autocmd FileType racket imap <LocalLeader>box* ⊠
	autocmd FileType racket imap <LocalLeader>bul •
	autocmd FileType racket imap <LocalLeader>C ℂ
	autocmd FileType racket imap <LocalLeader>cdot ∙
	autocmd FileType racket imap <LocalLeader>. ∙
	autocmd FileType racket imap <LocalLeader>cdots ⋯
	autocmd FileType racket imap <LocalLeader>check ✓
	autocmd FileType racket imap <LocalLeader>yes ✓
	autocmd FileType racket imap <LocalLeader>Check ✔
	autocmd FileType racket imap <LocalLeader>Yes ✔
	autocmd FileType racket imap <LocalLeader>circ ∘
	autocmd FileType racket imap <LocalLeader>clock ↻
	autocmd FileType racket imap <LocalLeader>cclock ↺
	autocmd FileType racket imap <LocalLeader>comp ∘
	autocmd FileType racket imap <LocalLeader>contra ↯
	autocmd FileType racket imap <LocalLeader>deg °
	autocmd FileType racket imap <LocalLeader>den ⟦⟧<left>
	autocmd FileType racket imap <LocalLeader>diamond ◇
	autocmd FileType racket imap <LocalLeader>dots …
	autocmd FileType racket imap <LocalLeader>down ↓
	autocmd FileType racket imap <LocalLeader>downtri ▼
	autocmd FileType racket imap <LocalLeader>Down ⇓
	autocmd FileType racket imap <LocalLeader>dunion ⨃
	autocmd FileType racket imap <LocalLeader>du ⨃
	autocmd FileType racket imap <LocalLeader>ell ℓ
	autocmd FileType racket imap <C-l> ℓ
	autocmd FileType racket imap <LocalLeader>empty ∅
	autocmd FileType racket imap <LocalLeader>equiv ≡
	autocmd FileType racket imap <LocalLeader>eq ≡
	autocmd FileType racket imap <LocalLeader>eventually ◇
	autocmd FileType racket imap <LocalLeader>exists ∃
	autocmd FileType racket imap <LocalLeader>flat ♭
	autocmd FileType racket imap <LocalLeader>fold ⦇⦈<left>
	autocmd FileType racket imap <LocalLeader>(\| ⦇
	autocmd FileType racket imap <LocalLeader>\|) ⦈
	autocmd FileType racket imap <LocalLeader>forall ∀
	autocmd FileType racket imap <LocalLeader>from ←
	autocmd FileType racket imap <LocalLeader><- ←
	autocmd FileType racket imap <LocalLeader>From ⇐
	autocmd FileType racket imap <LocalLeader>fromto ↔
	autocmd FileType racket imap <LocalLeader>Fromto ⇔
	autocmd FileType racket imap <LocalLeader>ge ≥
	autocmd FileType racket imap <LocalLeader>glub ⊓
	autocmd FileType racket imap <LocalLeader>iff ⇔
	autocmd FileType racket imap <LocalLeader>implies ⇒
	autocmd FileType racket imap <LocalLeader>impliedby ⇐
	autocmd FileType racket imap <LocalLeader>in ∈
	autocmd FileType racket imap <LocalLeader>infty ∞
	autocmd FileType racket imap <LocalLeader>inf ∞
	autocmd FileType racket imap <LocalLeader>int ∫
	autocmd FileType racket imap <LocalLeader>intersect ∩
	autocmd FileType racket imap <LocalLeader>iso ≅
	autocmd FileType racket imap <LocalLeader>join ⋈
	autocmd FileType racket imap <LocalLeader>land ∧
	autocmd FileType racket imap <LocalLeader>langle ⟨
	autocmd FileType racket imap <LocalLeader>lbrac ⟦
	autocmd FileType racket imap <LocalLeader>[[ ⟦
	autocmd FileType racket imap <LocalLeader>ldots …
	autocmd FileType racket imap <LocalLeader>ldown ⇃
	autocmd FileType racket imap <LocalLeader>leadsto ⇝
	autocmd FileType racket imap <LocalLeader>~> ⇝
	autocmd FileType racket imap <LocalLeader>le ≤
	autocmd FileType racket imap <LocalLeader>lift ⌊⌋<left>
	autocmd FileType racket imap <LocalLeader>floor ⌊⌋<left>
	autocmd FileType racket imap <LocalLeader>llangle ⟪
	autocmd FileType racket imap <LocalLeader>longto ⟶ 
	autocmd FileType racket imap <LocalLeader>-- ⟶ 
	autocmd FileType racket imap <LocalLeader>– ⟶ 
	autocmd FileType racket imap <LocalLeader>lor ∨
	autocmd FileType racket imap <LocalLeader>lower ⌈⌉<left>
	autocmd FileType racket imap <LocalLeader>ceil ⌈⌉<left>
	autocmd FileType racket imap <LocalLeader>lub ⊔
	autocmd FileType racket imap <LocalLeader>lup ↿
	autocmd FileType racket imap <LocalLeader>mapsto ↦
	autocmd FileType racket imap <LocalLeader>map ↦
	autocmd FileType racket imap <LocalLeader>mid ∣
	autocmd FileType racket imap <LocalLeader>models ⊨
	autocmd FileType racket imap <LocalLeader>\|= ⊨
	autocmd FileType racket imap <LocalLeader>N ℕ
	autocmd FileType racket imap <LocalLeader>ne ≠
	autocmd FileType racket imap <LocalLeader>nearrow ↗
	autocmd FileType racket imap <LocalLeader>Nearrow ⇗
	autocmd FileType racket imap <LocalLeader>neg ¬
	autocmd FileType racket imap <LocalLeader>/= ≠
	autocmd FileType racket imap <LocalLeader>nequiv ≢
	autocmd FileType racket imap <LocalLeader>neq ≢
	autocmd FileType racket imap <LocalLeader>nexist ∄
	autocmd FileType racket imap <LocalLeader>none ∄
	autocmd FileType racket imap <LocalLeader>ni ∋
	autocmd FileType racket imap <LocalLeader>ni ∋
	autocmd FileType racket imap <LocalLeader>nin ∉
	autocmd FileType racket imap <LocalLeader>niso ≇
	autocmd FileType racket imap <LocalLeader>notin ∉
	autocmd FileType racket imap <LocalLeader>nwarrow ↖
	autocmd FileType racket imap <LocalLeader>Nwarrow ⇖
	autocmd FileType racket imap <LocalLeader>oast ⊛
	autocmd FileType racket imap <LocalLeader>odot ⊙
	autocmd FileType racket imap <LocalLeader>o. ⊙
	autocmd FileType racket imap <LocalLeader>of ∘
	autocmd FileType racket imap <LocalLeader>o ∘
	autocmd FileType racket imap <LocalLeader>ominus ⊖
	autocmd FileType racket imap <LocalLeader>o- ⊖
	autocmd FileType racket imap <LocalLeader>oplus ⊕
	autocmd FileType racket imap <LocalLeader>o+ ⊕
	autocmd FileType racket imap <LocalLeader>oslash ⊘
	autocmd FileType racket imap <LocalLeader>o/ ⊘
	autocmd FileType racket imap <LocalLeader>otimes ⊗
	autocmd FileType racket imap <LocalLeader>o* ⊗
	autocmd FileType racket imap <LocalLeader>par ∂
	autocmd FileType racket imap <LocalLeader>pge ≽
	autocmd FileType racket imap <LocalLeader>pgt ≻
	autocmd FileType racket imap <LocalLeader>ple ≼
	autocmd FileType racket imap <LocalLeader>plt ≺
	autocmd FileType racket imap <LocalLeader>p≥ ≽
	autocmd FileType racket imap <LocalLeader>p> ≻
	autocmd FileType racket imap <LocalLeader>p≤ ≼
	autocmd FileType racket imap <LocalLeader>p< ≺
	autocmd FileType racket imap <LocalLeader>pm ±
	autocmd FileType racket imap <LocalLeader>prec ≼
	autocmd FileType racket imap <LocalLeader>prod ∏
	autocmd FileType racket imap <LocalLeader>proves ⊢
	autocmd FileType racket imap <LocalLeader>\|- ⊢
	autocmd FileType racket imap <LocalLeader>provedby ⊣
	autocmd FileType racket imap <LocalLeader>Q ℚ
	autocmd FileType racket imap <LocalLeader>qed ∎
	autocmd FileType racket imap <LocalLeader>R ℝ
	autocmd FileType racket imap <LocalLeader>rangle ⟩
	autocmd FileType racket imap <LocalLeader>rbrac ⟧
	autocmd FileType racket imap <LocalLeader>]] ⟧
	autocmd FileType racket imap <LocalLeader>rdown ⇂
	autocmd FileType racket imap <LocalLeader>righttri ▸
	autocmd FileType racket imap <LocalLeader>rrangle ⟫
	autocmd FileType racket imap <LocalLeader>rup ↾
	autocmd FileType racket imap <LocalLeader>searrow ↘
	autocmd FileType racket imap <LocalLeader>Searrow ⇘
	autocmd FileType racket imap <LocalLeader>setminus ∖
	autocmd FileType racket imap <LocalLeader>sharp ♯
	autocmd FileType racket imap <LocalLeader># ♯
	autocmd FileType racket imap <LocalLeader>sim ∼
	autocmd FileType racket imap <LocalLeader>simeq ≃
	autocmd FileType racket imap <LocalLeader>some ∃
	autocmd FileType racket imap <C-e> ∃
	autocmd FileType racket imap <LocalLeader>sqge ⊒
	autocmd FileType racket imap <LocalLeader>sqgt ⊐
	autocmd FileType racket imap <LocalLeader>sqle ⊑
	autocmd FileType racket imap <LocalLeader>sqlt ⊏
	autocmd FileType racket imap <LocalLeader>s≥ ⊒
	autocmd FileType racket imap <LocalLeader>s> ⊐
	autocmd FileType racket imap <LocalLeader>s≤ ⊑
	autocmd FileType racket imap <LocalLeader>s< ⊏
	autocmd FileType racket imap <LocalLeader>sqr ²
	autocmd FileType racket imap <LocalLeader>sqrt √
	autocmd FileType racket imap <LocalLeader>star ✭
	autocmd FileType racket imap <LocalLeader>subset ⊂
	autocmd FileType racket imap <LocalLeader>sub ⊂
	autocmd FileType racket imap <LocalLeader>subseteq ⊆
	autocmd FileType racket imap <LocalLeader>subeq ⊆
	autocmd FileType racket imap <LocalLeader>subsetneq ⊊
	autocmd FileType racket imap <LocalLeader>subneq ⊊
	autocmd FileType racket imap <LocalLeader>sum ∑
	autocmd FileType racket imap <LocalLeader>supset ⊃
	autocmd FileType racket imap <LocalLeader>sup ⊃
	autocmd FileType racket imap <LocalLeader>supseteq ⊇
	autocmd FileType racket imap <LocalLeader>supeq ⊇
	autocmd FileType racket imap <LocalLeader>supsetneq ⊋
	autocmd FileType racket imap <LocalLeader>supneq ⊋
	autocmd FileType racket imap <LocalLeader>swarrow ↙
	autocmd FileType racket imap <LocalLeader>Swarrow ⇙
	autocmd FileType racket imap <LocalLeader>thus ∴
	autocmd FileType racket imap <LocalLeader>times ×
	autocmd FileType racket imap <LocalLeader>* ×
	autocmd FileType racket imap <LocalLeader>to →
	autocmd FileType racket imap <LocalLeader>- →
	autocmd FileType racket imap <C-_> →
	autocmd FileType racket imap <LocalLeader>To ⇒
	autocmd FileType racket imap <LocalLeader>= ⇒
	autocmd FileType racket imap <LocalLeader>top ⊤
	autocmd FileType racket imap <LocalLeader>tuple ⟨⟩<left>
	autocmd FileType racket imap <LocalLeader>up ↑
	autocmd FileType racket imap <LocalLeader>updown ↕
	autocmd FileType racket imap <LocalLeader>ud ↕
	autocmd FileType racket imap <LocalLeader>unfold ⦉⦊<left>
	autocmd FileType racket imap <LocalLeader><\| ⦉
	autocmd FileType racket imap <LocalLeader>\|> ⦊
	autocmd FileType racket imap <LocalLeader>up;down ⇅
	autocmd FileType racket imap <LocalLeader>u;d ⇅
	autocmd FileType racket imap <LocalLeader>uptri ▲
	autocmd FileType racket imap <LocalLeader>Up ⇑
	autocmd FileType racket imap <LocalLeader>union ∪
	autocmd FileType racket imap <LocalLeader>vdots ⋮
	autocmd FileType racket imap <LocalLeader>voltage ⚡
	autocmd FileType racket imap <LocalLeader>xmark ✗
	autocmd FileType racket imap <LocalLeader>no ✗
	autocmd FileType racket imap <LocalLeader>Xmark ✘
	autocmd FileType racket imap <LocalLeader>No ✘
	autocmd FileType racket imap <LocalLeader>Z ℤ
	" Not math
	autocmd FileType racket imap <LocalLeader>sec §
	" Superscripts
	autocmd FileType racket imap <LocalLeader>^0 ⁰
	autocmd FileType racket imap <LocalLeader>^1 ¹
	autocmd FileType racket imap <LocalLeader>^2 ²
	autocmd FileType racket imap <LocalLeader>^3 ³
	autocmd FileType racket imap <LocalLeader>^4 ⁴
	autocmd FileType racket imap <LocalLeader>^5 ⁵
	autocmd FileType racket imap <LocalLeader>^6 ⁶
	autocmd FileType racket imap <LocalLeader>^7 ⁷
	autocmd FileType racket imap <LocalLeader>^8 ⁸
	autocmd FileType racket imap <LocalLeader>^9 ⁹
	autocmd FileType racket imap <LocalLeader>^n ⁿ
	autocmd FileType racket imap <LocalLeader>^i ⁱ
	autocmd FileType racket imap <LocalLeader>^+ ⁺
	autocmd FileType racket imap <LocalLeader>^- ⁻
	autocmd FileType racket imap <LocalLeader>' ′
	autocmd FileType racket imap <LocalLeader>'' ″
	autocmd FileType racket imap <LocalLeader>''' ‴
	autocmd FileType racket imap <LocalLeader>'''' ⁗
	autocmd FileType racket imap <LocalLeader>" ″
	autocmd FileType racket imap <LocalLeader>"" ⁗
	autocmd FileType racket imap <LocalLeader>` ‵
	autocmd FileType racket imap <LocalLeader>`` ‶
	autocmd FileType racket imap <LocalLeader>``` ‷
	" Subscripts
	autocmd FileType racket imap <LocalLeader>0 ₀
	autocmd FileType racket imap <LocalLeader>1 ₁
	autocmd FileType racket imap <LocalLeader>2 ₂
	autocmd FileType racket imap <LocalLeader>3 ₃
	autocmd FileType racket imap <LocalLeader>4 ₄
	autocmd FileType racket imap <LocalLeader>5 ₅
	autocmd FileType racket imap <LocalLeader>6 ₆
	autocmd FileType racket imap <LocalLeader>7 ₇
	autocmd FileType racket imap <LocalLeader>8 ₈
	autocmd FileType racket imap <LocalLeader>9 ₉
	autocmd FileType racket imap <LocalLeader>_i ᵢ
	autocmd FileType racket imap <LocalLeader>_j ⱼ
	autocmd FileType racket imap <LocalLeader>_+ ₊
	autocmd FileType racket imap <LocalLeader>_- ₋
	autocmd FileType racket imap <LocalLeader>p0 π₀
	autocmd FileType racket imap <LocalLeader>p1 π₁
	autocmd FileType racket imap <LocalLeader>p2 π₂
	autocmd FileType racket imap <LocalLeader>p3 π₃
	autocmd FileType racket imap <LocalLeader>p4 π₄
	autocmd FileType racket imap <LocalLeader>p5 π₅
	autocmd FileType racket imap <LocalLeader>p6 π₆
	autocmd FileType racket imap <LocalLeader>p7 π₇
	autocmd FileType racket imap <LocalLeader>p8 π₈
	autocmd FileType racket imap <LocalLeader>p9 π₉
	autocmd FileType racket imap <LocalLeader>i0 ι₀
	autocmd FileType racket imap <LocalLeader>i1 ι₁
	autocmd FileType racket imap <LocalLeader>i2 ι₂
	autocmd FileType racket imap <LocalLeader>i3 ι₃
	autocmd FileType racket imap <LocalLeader>i4 ι₄
	autocmd FileType racket imap <LocalLeader>i5 ι₅
	autocmd FileType racket imap <LocalLeader>i6 ι₆
	autocmd FileType racket imap <LocalLeader>i7 ι₇
	autocmd FileType racket imap <LocalLeader>i8 ι₈
	autocmd FileType racket imap <LocalLeader>i9 ι₉
	" Greek (lower)
	autocmd FileType racket imap <LocalLeader>alpha α
	autocmd FileType racket imap <LocalLeader>a α
	autocmd FileType racket imap <LocalLeader>beta β
	autocmd FileType racket imap <LocalLeader>b β
	autocmd FileType racket imap <LocalLeader>gamma γ
	autocmd FileType racket imap <LocalLeader>g γ
	autocmd FileType racket imap <LocalLeader>delta δ
	autocmd FileType racket imap <LocalLeader>d δ
	autocmd FileType racket imap <LocalLeader>epsilon ε
	autocmd FileType racket imap <LocalLeader>e ε
	autocmd FileType racket imap <LocalLeader>zeta ζ
	autocmd FileType racket imap <LocalLeader>z ζ
	autocmd FileType racket imap <LocalLeader>eta η
	autocmd FileType racket imap <LocalLeader>h η
	autocmd FileType racket imap <LocalLeader>theta θ
	autocmd FileType racket imap <LocalLeader>iota ι
	autocmd FileType racket imap <LocalLeader>i ι
	autocmd FileType racket imap <LocalLeader>kappa κ
	autocmd FileType racket imap <LocalLeader>k κ
	autocmd FileType racket imap <LocalLeader>lambda λ
	autocmd FileType racket imap <LocalLeader>l λ
	autocmd FileType racket imap <C-\> λ
	autocmd FileType racket imap <LocalLeader>mu μ
	autocmd FileType racket imap <LocalLeader>m μ
	autocmd FileType racket imap <LocalLeader>nu ν
	autocmd FileType racket imap <LocalLeader>n ν
	autocmd FileType racket imap <LocalLeader>xi ξ
	autocmd FileType racket imap <LocalLeader>omicron ο
	"autocmd FileType racket imap <LocalLeader>o ο " Shadows ∘
	autocmd FileType racket imap <LocalLeader>pi π
	autocmd FileType racket imap <LocalLeader>p π
	autocmd FileType racket imap <LocalLeader>rho ρ
	autocmd FileType racket imap <LocalLeader>r ρ
	autocmd FileType racket imap <LocalLeader>sigma σ
	autocmd FileType racket imap <LocalLeader>s σ
	autocmd FileType racket imap <LocalLeader>varsigma ς
	autocmd FileType racket imap <LocalLeader>vars ς
	autocmd FileType racket imap <LocalLeader>tau τ
	autocmd FileType racket imap <LocalLeader>t τ
	"autocmd FileType racket imap <LocalLeader>upsilon υ " Delays <leader>up
	autocmd FileType racket imap <LocalLeader>u υ
	autocmd FileType racket imap <LocalLeader>phi φ
	autocmd FileType racket imap <LocalLeader>f φ
	autocmd FileType racket imap <LocalLeader>chi χ
	autocmd FileType racket imap <LocalLeader>x χ
	autocmd FileType racket imap <LocalLeader>psi ψ
	autocmd FileType racket imap <LocalLeader>c ψ
	autocmd FileType racket imap <LocalLeader>omega ω
	autocmd FileType racket imap <LocalLeader>v ω
	" Greek (upper)
	autocmd FileType racket imap <LocalLeader>Alpha Α
	autocmd FileType racket imap <LocalLeader>Beta Β
	autocmd FileType racket imap <LocalLeader>Gamma Γ
	autocmd FileType racket imap <LocalLeader>G Γ
	autocmd FileType racket imap <LocalLeader>Delta Δ
	autocmd FileType racket imap <LocalLeader>D Δ
	autocmd FileType racket imap <LocalLeader>Epsilon Ε
	autocmd FileType racket imap <LocalLeader>Zeta Ζ
	autocmd FileType racket imap <LocalLeader>Eta Η
	autocmd FileType racket imap <LocalLeader>Theta Θ
	autocmd FileType racket imap <LocalLeader>Iota Ι
	autocmd FileType racket imap <LocalLeader>Kappa Κ
	autocmd FileType racket imap <LocalLeader>Lambda Λ
	autocmd FileType racket imap <LocalLeader>L Λ
	autocmd FileType racket imap <LocalLeader>Mu Μ
	autocmd FileType racket imap <LocalLeader>Nu Ν
	autocmd FileType racket imap <LocalLeader>Xi Ξ
	autocmd FileType racket imap <LocalLeader>Omicron Ο
	autocmd FileType racket imap <LocalLeader>Pi Π
	autocmd FileType racket imap <LocalLeader>P Π
	autocmd FileType racket imap <LocalLeader>Rho Ρ
	autocmd FileType racket imap <LocalLeader>Sigma Σ
	autocmd FileType racket imap <LocalLeader>S Σ
	autocmd FileType racket imap <LocalLeader>Tau Τ
	autocmd FileType racket imap <LocalLeader>Upsilon Υ
	autocmd FileType racket imap <LocalLeader>Phi Φ
	autocmd FileType racket imap <LocalLeader>F Φ
	autocmd FileType racket imap <LocalLeader>Chi Χ
	autocmd FileType racket imap <LocalLeader>Psi Ψ
	"autocmd FileType racket "imap <LocalLeader>C Ψ " Shadows ℂ
	autocmd FileType racket imap <LocalLeader>Omega Ω
	autocmd FileType racket imap <LocalLeader>V Ω
augroup END

augroup javascript
	autocmd!
	autocmd FileType javascript let b:delimitMate_matchpairs = "(:),[:],{:}"
augroup END

augroup tex
	autocmd!
	" highlight characters past column 80
	autocmd FileType tex setlocal nowrap
	autocmd FileType tex setlocal tabstop=4
	autocmd FileType tex setlocal shiftwidth=4
	autocmd FileType tex setlocal expandtab
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
