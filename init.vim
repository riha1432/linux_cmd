"Plug-In 시작 (플러그인 설치 경로)
call plug#begin('~/.vim/plugged')

" 설치하고 싶은 플러그인 (예, NERDTree)
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
" 플러그인 시스템 초기화
call plug#end()

"테마 설정
set background=dark
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_italic=1
let g:airline#extensions#tabline#enabled = 1
augroup Spellunderline
   autocmd!
   autocmd ColorScheme *
     \ highlight SpellBad
     \     cterm=Underline
     \   ctermfg=NONE
     \   ctermbg=NONE
     \   term=Reverse
     \   gui=Undercurl
     \   guisp=Red
   autocmd ColorScheme *
     \ highlight SpellCap
     \     cterm=Underline
     \   ctermfg=NONE
     \   ctermbg=NONE
     \   term=Reverse
     \   gui=Undercurl
     \   guisp=Red
   autocmd ColorScheme *
     \ highlight SpellLocal
     \     cterm=Underline
     \   ctermfg=NONE
     \   ctermbg=NONE
     \   term=Reverse
     \   gui=Undercurl
     \   guisp=Red
   autocmd ColorScheme *
     \ highlight SpellRare
     \     cterm=Underline
     \   ctermfg=NONE
     \   ctermbg=NONE
     \   term=Reverse
     \   gui=Undercurl
     \   guisp=Red
augroup END
set termguicolors
colorscheme gruvbox

set encoding=utf-8
set showtabline=2
autocmd BufEnter term://* start " do nothing
autocmd TermOpen term://* execute ":set nonu"

" 이하 본인의 nvim 설정
if has("syntax")
   syntax on
endif
set inccommand=nosplit
set nu
set hlsearch
set autoindent
set ts=4
set sts=4
set cindent
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set smartindent
set ruler
set mouse=a
set path+=**
set clipboard=unnamedplus


:func Compiling()
   :w
   :!gcc %
   :!g++ %
:endfunc

func! CmtOn()    "주석 on
   exe "'<,'>norm i//"
endfunc

func! CmtOff()    "주석 off
   exe "'<,'>norm 2x"
endfunc

vmap <a-c> <esc>:call CmtOn() <cr>
vmap <a-x> <esc>:call CmtOff() <cr>

nmap <a-q> :wq<CR>
nmap <F5> :call Compiling()<CR>
nmap <F8> :split<CR> <c-w>w :term<CR> a ./a.out<CR>
nmap <F9> :NERDTreeToggle<CR>



