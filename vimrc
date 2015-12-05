set modelines=0
set nocompatible
let mapleader=","

"Sanity
set autoindent
set backspace=indent,eol,start
set cursorline
set hidden
set laststatus=2
set number
set relativenumber
set ruler
set showcmd
set scrolloff=5
set ttyfast
set undofile
set visualbell
set wildmenu
set wildmode=list:longest
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap j gj
nnoremap k gk
noremap ; :

"Tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
filetype indent on
au FileType python setl sw=2 sts=2 et

"Searching
set gdefault
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"Long lines
set wrap
set textwidth=80
set colorcolumn=81
set formatoptions=qrn1

"Splits
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Miscellaneous
au FocusLost * :wa
syntax on
filetype on
colorscheme delek
autocmd BufRead,BufNew *.md set filetype=markdown
nmap <CR> o<Esc>
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set noerrorbells
set mouse=a
set clipboard=unnamed

"use Enter in normal mode to create a new line
nmap <S-Enter> O<Esc>

"delete all trailing whitespace
nnoremap <leader>W :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"select just pasted text
nnoremap <leader>v V`]
