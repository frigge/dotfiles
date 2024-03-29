" Vundle
" ---------------------------------------------
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'godlygeek/tabular'
Plugin 'gmarik/vundle'
Plugin 'tikhomirov/vim-glsl'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
" ---------------------------------------------

filetype plugin indent on
syntax on

set encoding=utf-8

set hidden
set undofile
set undodir=$HOME/.vim/undo
set showcmd
set splitright
set splitbelow

nmap <F1> :vsplit $MYVIMRC<CR>

set t_Co=256
" set cul
set guifont=Consolas\ for\ Powerline\ 9

" jump to last position after reopening
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:ycm_confirm_extra_conf=0
let g:pymode_folding=0

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsExpandTrigger="<C-Tab>"

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

" execute "set colorcolumn=".join(range(80, 400), ',')

autocmd BufNewFile,BufRead *.glsl,*.geom,*.mesh,*.task,*.rgen,*.rchit,*.rahit,*.rmiss,*.vert,*.frag,*.gsh,*.vsh,*.fsh,*.vs,*.fs set filetype=glsl

set scrolloff=5
nnoremap <Space> :nohlsearch<CR>

" clang-format integration
map <LEADER>f :pyf /usr/share/clang/clang-format.py<cr>

" stay at position when searching
nnoremap * mz*`z
nnoremap # mz#`z

map <F5> :make!\|copen<CR>
" FileType dependand stuff ...

" set cpp compiler
au FileType cpp compiler gcc
au FileType cpp map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" set java compiler and makeprg to use ant
au FileType java compiler ant
au FileType java set makeprg=ant\ compile\ run
au FileType java map <F5> :make!\|copen<CR>

set tags=tags

" build tags of your own project with Ctrl-F12
map <F12> :!bash -c "ack -f \| grep -v build \| ctags --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q -L -"<CR>

let g:tex_flavor='latex'
