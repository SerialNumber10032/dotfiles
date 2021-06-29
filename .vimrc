"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
set nocompatible
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" vim-plug (https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline' " Status line
Plug 'scrooloose/nerdtree' " Tree view
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Colorschemes
Plug 'joshdick/onedark.vim'
" Initialize plugin system
call plug#end()
" simple vimrc config

syntax on
colorscheme onedark
set number         " Show line numbers
set ruler          " Show the line and column number of the cursor position
set sm             " auto complete ( [ {

" indentation
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent     " Copy indent from current line when starting a new line
set smartindent    " Do smart indenting when starting a new line. Works with supported c-like languages

" searching
set hlsearch       " Highlight search results
set ignorecase     " When doing a search, ignore the case of letters
set smartcase      " Override the ignorecase option if the search pattern contains upper case letters

syntax on          " auto highlight syntax

" encoding
set encoding=utf-8
set fileencoding=utf-8

" key settings
let mapleader = ";"
imap jj <ESC>
vmap <leader>y "*y 
"test"
let g:airline_theme='onedark'
nnoremap <leader>e :NERDTreeToggle<CR>
