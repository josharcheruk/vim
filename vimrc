set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-surround'
"Plugin 'itchyny/lightline.vim'
"Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'mattn/emmet-vim'
"Plugin 'changa/desert256.vim'
"Plugin 'ap/vim-buftabline'
"Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
"call vundle#end()            " required

if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'ap/vim-buftabline'
Plug 'altercation/vim-colors-solarized'
Plug 'qpkorr/vim-bufkill'
Plug 'mattn/emmet-vim'

" Initialize plugin system
call plug#end()

filetype plugin indent on    " required

""""""""""""""""""""""
" Basic alterations
""""""""""""""""""""""
set modelines=0 " Security feature that removes modelines, whatever that is
set encoding=utf-8
set scrolloff=3 " Forces 3 lines to be visible when scrolling
set autoindent " Indents line to the same level as current when hit enter
set showmode " Shows which mode you are in (e.g Visual)
set hidden " Allow open new buffer without writing current one (hides current)
set wildmenu " Auto complete Vim commands using tab key (or list of options)
set wildmode=list:longest 
set relativenumber " Display relative line numbers
set number " Display absolute line number of current line
set ttyfast " Speeds up vim basically
set backspace=2 " make backspace work like most other apps
set laststatus=2 " Shows the current mode, filename, file status, ruler etc
set undofile
set belloff=all
let mapleader="," 

"""""""""""""""""
" Key remapping
"""""""""""""""""
" Navigating windows with ctrl + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Allows cycling through tabs with ctrl-n/ctrl-p
nnoremap <C-N> :bnext<CR>
nnoremap <C-M> :bprev<CR>

" [s and ]s to navigate. z= to bring up suggestions whilst on word
 nnoremap <leader>sp :setlocal spell spelllang=en_gb<CR>
 nnoremap <leader>spo :set nospell<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Font choices - checks if linux/Mac and set appropriate font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_running")
  if has("gui_gtk3")
    set guifont=Ubuntu\ Mono\ 14
  elseif has("gui_photon")
    set guifont=Ubuntu\ Mono:s14
  elseif has("gui_macvim")
    set guifont=Menlo:h1
  else
  set guifont=Ubuntu\ Mono\ 14
  endif
  set lines=50 columns=120
endif

""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <F5> :NERDTreeToggle<CR>
if has("gui_running")
    autocmd VimEnter * NERDTree
endif

""""""""""""""""""""""
" ctrlp
""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1

""""""""""""""""""""""
" Syntax/Colour
""""""""""""""""""""""
syntax on
set background=dark
set t_Co=256
colorscheme solarized
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
" nnoremap / /\v
" vnoremap / /\v
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
" set linebreak
" set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

