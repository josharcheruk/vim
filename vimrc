set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""
" Basic alterations
""""""""""""""""""""""
set modelines=0 " Security feature that removes modelines, whatever that is
set encoding=utf-8
set scrolloff=3 " Forces 3 lines to be visible when scrolling
set autoindent " Indents line to the same level as current when hit enter
set showmode " Shows which mode you are in (e.g Visual)
set showcmd " Shows 'count' in bottom of window (e.g. 6j - it'll show the 6)
set hidden " Allow open new buffer without writing current one (hides current)
set wildmenu " Auto complete Vim commands using tab key (or list of options)
set wildmode=list:longest 
set relativenumber " Display relative line numbers
set number " Display absolute line number of current line
set visualbell " Flash on error
set ttyfast " Speeds up vim basically
set ruler " outputs cursor position in the bottom right of window
set backspace=2 " make backspace work like most other apps
set laststatus=2 " Shows the current mode, filename, file status, ruler etc
set undofile
let mapleader="," 
" Font choices - checks if linux/Mac and set appropriate font
if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 11
elseif has("gui_macvim")
    set guifont=Courier\ New:h16
endif

if has("gui_running")
    if has("gui_gtk2")
    :set guifont=Droid\ Sans\ Mono\ 11
    elseif has("gui_macvim")
    set guifont=Courier\ New:h16
    endif
endif

""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""

nnoremap <leader>nt :NERDTreeToggle<CR>

""""""""""""""""""""""
" Syntax/Colour
""""""""""""""""""""""

set background=dark
set t_Co=256
colorscheme desert
" Following tells vim .md is the same as .markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" Enables markdown fenced code block highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

""""""""""""""""""""""
" Tab settings
""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

""""""""""""""""""""""
" Searching/moving
""""""""""""""""""""""

" Turns off default regex characters and makes searches use normal regexes.
nnoremap / /\v
vnoremap / /\v
" make Vim deal with case-sensitive search intelligently. 
" If you search for an all-lowercase string your search will be 
" case-insensitive, but if one or more characters is uppercase 
" the search will be case-sensitive.
set ignorecase
set smartcase
" gdefault applies substitutions globally on lines. For example, 
" instead of :%s/foo/bar/g you just type :%s/foo/bar/
set gdefault
" incsearch, showmatch and hlsearch work together to highlight search 
" results (as you type).
set incsearch
set showmatch
set hlsearch
" makes it easy to clear out a search by typing ,<space>.
nnoremap <leader><space> :noh<cr>

""""""""""""""""""""""
" Wrapping
""""""""""""""""""""""

" set wrap
set linebreak
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

