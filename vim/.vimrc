syntax enable               "enables syntax procesing
set tabstop=4		        "number of visual spaces per TAB
set softtabstop=4	        "number of spaces in tab  when editing
set expandtab		        "tabs are spaces

set showcmd		            "show command in bottom bar

filetype indent on	        "load filetype-specific indent files
set wildmenu		        "visual autocomplete for command menu
set lazyredraw		        "redraw only when we need to
set showmatch		        "highlights matching {[()]}
set incsearch		        "search as characters are entered
set hlsearch		        "highlight search matches
set foldenable		        "enables folding
set foldlevelstart=10	    "open most folds by default
set number relativenumber   "relative numbering

let mapleader=","

let python_highlight_all=1

" inoremap jk <esc>
" swap esc and caps with setxkbmap -option caps:swapescape
nnoremap <leader><space> :nohlsearch<CR>
nmap <silent> <A-UP> :wincmd k<CR>
nmap <silent> <A-DOWN> :wincmd j<CR>
nmap <silent> <A-LEFT> :wincmd h<CR>
nmap <silent> <A-RIGHT> :wincmd l<CR>

"enable Folding
set foldmethod=indent
set foldlevel=99

"enable folding with spacebar
nnoremap <space> za

"prevent recompile on cursor hold in Latex
let g:livepreiview_cursorhold_recompile = 0

"Python
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

"Javascript Html Css
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

"Flags unnecessary Whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"TODO:::::::::::::::::::::
"GIT integration
"take a look at POWERLINE plugin


set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Folding plugin 
Plugin 'tmhedberg/SimpylFold'

"Auto-Indentation for Python with (mostly) PEP 8 standard
Plugin 'vim-scripts/indentpython.vim'

"Syntax highlighting
Plugin 'vim-syntastic/syntastic'

"PEP 8 checking
Plugin 'nvie/vim-flake8'

"file tree extension NERDTree
Plugin 'scrooloose/nerdtree'

"use tabs for nerdtree
Plugin 'jistr/vim-nerdtree-tabs'

"Fuzzy search plugin
Plugin 'kien/ctrlp.vim'

" Vim Latex Plugin
Plugin 'xuhdev/vim-latex-live-preview'

"Python autocomplete
"Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

