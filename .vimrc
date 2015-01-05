set nocompatible

" Vundle
" ---------------------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tikhomirov/vim-glsl'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
" ---------------------------------------------

filetype plugin indent on

set encoding=utf-8

let mapleader=","
let maplocalleader=","

set hidden
set undofile
set undodir=$HOME/.vim/undo
set showcmd
set splitright
set splitbelow

let g:tagbar_autoclose=1
let g:tagbar_autofocus=1

nmap <F9> :Tagbar<CR>

nmap <F1> :vsplit $MYVIMRC<CR>

set t_Co=256
colorscheme molokai
set cul
set cursorcolumn
highlight Folded guibg=#111111 ctermbg=232
highlight ColorColumn term=none cterm=none guibg=#111111 ctermbg=232
highlight CursorLine term=none cterm=none ctermbg=232 guibg=#111111
set guifont=Consolas\ for\ Powerline\ 9

noremap <leader>n :bn<CR>
noremap <leader>p :bp<CR>
noremap <Leader>w :bw<CR>

" jump to last position after reopening
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:ycm_confirm_extra_conf=0
let g:pymode_folding=0

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsExpandTrigger="<C-Tab>"

" let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled=1

if (!exists("g:airline_symbols"))
    let g:airline_symbols={}
endif

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" this is incredibly useful
set grepprg=ag
nnoremap <LEADER>vv :grep! <cword>\|copen<CR>

map <F2> :Gstatus<CR>

set fillchars="fold: "
set foldmethod=syntax

set wildmenu wildmode=full

set nrformats+=alpha
set mouse=a
set number
set showcmd
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set showbreak=↪
set noswapfile
set tabstop=4
set autoindent
set shiftwidth=4
set softtabstop=4

set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m

set laststatus=2
set autoread
set linebreak
set expandtab
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase
set exrc

set cino=(0

execute "set colorcolumn=".join(range(80, 400), ',')

autocmd BufNewFile,BufRead *.glsl,*.geom,*.vert,*.frag,*.gsh,*.vsh,*.fsh,*.vs,*.fs set filetype=glsl

set scrolloff=5
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" stay at position when searching
nnoremap * mz*`z
nnoremap # mz#`z

" FileType dependand stuff ...

" set cpp compiler
au FileType cpp compiler gcc
au FileType cpp map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
au FileType cpp map <F5> :make!\|copen<CR>

" set java compiler and makeprg to use ant
au FileType java compiler ant
au FileType java set makeprg=ant\ compile\ run
au FileType java map <F5> :make!\|copen<CR>

" configure tags - add additional tags here or comment out not-used ones
" set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/gl
" set tags+=~/.vim/tags/sdl
" set tags+=~/.vim/tags/qt4
" set tags+=~/.vim/tags/java
set tags=tags

" build tags of your own project with Ctrl-F12
map <C-F12> :!bash -c "ack -f \| grep -v build \| ctags --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q -L -"<CR>
iabbr _> ->
iabbr teh the

" closing brackets "
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

set thesaurus+=~/ownCloud/thesaurus/openthesaurus.txt

let g:tex_flavor='latex'
