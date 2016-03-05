" --------------------------------------------------------------------------- 
" ~~ INIT ~~
" ---------------------------------------------------------------------------
set nocompatible   " Disable vi-compatibility
set exrc " enable vimrc
let $PATH = '/usr/local/bin:'.$PATH

execute pathogen#infect()
syntax on
filetype on
filetype plugin on
filetype indent on

" --------------------------------------------------------------------------- 
" ~~ GENERAL ~~
" ---------------------------------------------------------------------------

set history=1000                " Enable history
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set expandtab
set number 
"set backspace=2
set backspace=indent,eol,start
set ruler
set showcmd
set ignorecase
set colorcolumn=79  
set hlsearch
set hidden                       " Enable hidden buffers
"set cursorline                  " Highlight current line
set mouse=a
set mousehide
set mousemodel=popup
"let g:pymode = 0
" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1
"set esckeys
"set timeoutlen=1000 
"set ttimeoutlen=0
"set autochdir
set exrc
set secure

" --------------------------------------------------------------------------- 
" ~~ MAPPINGS ~~
" ---------------------------------------------------------------------------

let mapleader = ","

nnoremap ,<space> <CR>:nohlsearch<CR>
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bn<CR>
" Move to the previous buffer
nmap <leader>h :bp<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" javascript docs
nmap <silent> <C-l> <Plug>(jsdoc)

" Descactiva las flechitas
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Nerd Tree
nmap <C-b> :NERDTreeToggle<cr>

" --------------------------------------------------------------------------- 
" ~~ PLUGINS CONF ~~
" ---------------------------------------------------------------------------

" javascript docs
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_underscore_private = 1


let g:jsx_ext_required=0                     " jsx highlighting in .js files

" UltiSnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" " List possible snippets based on current file
 
let NERDTreeIgnore = ['\.pyc$'] 

let g:syntastic_html_tidy_ignore_errors=[
            \"<ion-", "discarding unexpected </ion-", 
            \" proprietary attribute \"ng-" 
            \]

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set wildignore=Ui_*,*.git,*.pyc
set omnifunc=syntaxcomplete#Complete

" --------------------------------------------------------------------------- 
" ~~ AUTOCOMMANDS ~~
" ---------------------------------------------------------------------------

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

autocmd FileType make setlocal noexpandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"autoremove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" --------------------------------------------------------------------------- 
" ~~ APPEARENCE ~~
" ---------------------------------------------------------------------------

" Disable visual bell
set noerrorbells
set novisualbell
set t_vb=

" for my zsh terminal <3
set title
set clipboard=unnamed
set background=dark
set encoding=utf-8
"set term=screen-256color
set term=xterm
set t_Co=256
set laststatus=2   " Always show the statusline

" Mouse
set guioptions-=r 
set guioptions-=L

let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Making cursor a bar in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"colorscheme jellybeans
colorscheme spacegray
"colorscheme onedark 
"colorscheme smyck 
"colorscheme atom-dark
"colorscheme wombat 

" Ariline conf
set guifont=Source\ Code\ Pro\ for\ Powerline:h14 "make sure to escape the spaces in the name properly
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline_symbols = {} 
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

"set nofoldenable    " disable folding
