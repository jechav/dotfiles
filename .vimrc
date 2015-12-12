set clipboard=unnamedplus
execute pathogen#infect()
syntax on
filetype plugin indent on
" Enable history
set history=1000
" Enable hidden buffers
set hidden
" for my zsh terminal <3
set term=screen-256color
set t_Co=256
set esckeys
set timeoutlen=1000 
set ttimeoutlen=0
set laststatus=2   " Always show the statusline
"
" Mouse
set mouse=a
set mousehide
set mousemodel=popup

"basic
let mapleader = ","
set showcmd 
set mat=2

"set cursorline
set magic
set lazyredraw 
set showmatch 
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>

"all nerdtree
map <C-b> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"Shortcuts Buffer
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" " Move to the previous buffer
nmap <leader>h :bprevious<CR>
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" " Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Set to auto read when a file is changed from the outside
set autoread
"Always show current position
set ruler

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

inoremap jj <esc>

"autoremove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set wildignore=Ui_*,*.git,*.pyc

set nofoldenable    " disable folding

set cursorline                  " Highlight current line
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set expandtab
set number 
set backspace=2
set ruler
set ignorecase
set colorcolumn=99  
set smartindent

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
