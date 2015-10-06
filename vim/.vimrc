set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin()

""" Plugins

"" let Vundle manage Vundle
Plugin 'gmarik/vundle'

"" VCS
Plugin 'tpope/vim-fugitive'


"" System
Plugin 'tpope/vim-surround'             " make working with tags / quotes / parentheses / etc easier
Plugin 'scrooloose/syntastic'     " syntax checking
Plugin 'Raimondi/delimitMate'     " automatically insert closing braces / parentheses / quotes
Plugin 'kien/ctrlp.vim'           " fuzzy-file searching
Plugin 'mhinz/vim-signify'        " inline diff in the margin
Plugin 'scrooloose/nerdtree'      " file tree
Plugin 'jistr/vim-nerdtree-tabs'  " easier navigation for nerdtree buffers
Plugin 'Lokaltog/vim-easymotion'

"" Theme
Plugin 'altercation/vim-colors-solarized'
Plugin 'skammer/vim-css-color'
Plugin 'mgutz/vim-colors'

call vundle#end()

filetype plugin indent on    " required
let mapleader = ","
let leader=","

" Save when losing focus
set autowriteall " Auto-save files when switching buffers or leaving vim.
au FocusLost * silent! :wa
au TabLeave * silent! :wa

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

"" Basics
syntax enable
set number        " always show line numbers
set t_Co=256
set background=dark
let g:solarized_termtrans=1
set hidden        " Allow un-saved buffers in background
set clipboard=unnamed " Share system clipboard.
set backspace=indent,eol,start " Make backspace behave normally.
set directory=/tmp// " swap files
set backupskip=/tmp/*,/private/tmp/*
set ffs=unix,dos,mac "Default file types
set nowrap        " don't wrap lines
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
"  case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set list listchars=tab:»\ ,trail:·
colorscheme solarized


""Utility mappings
cmap w!! w !sudo tee % >/dev/null


""Programing

"how many spaces we want for tabs
set tabstop=4

"amount of whitespace to insert using
"indent commands in normal mode
set shiftwidth=4 softtabstop=4

"replace tabs for spaces
set expandtab
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to shiftwidth
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation

" code folding
if has ('folding')
    set foldenable
    set foldmethod=marker
    set foldmarker={{{,}}}
    set foldcolumn=0
endif



" NerdTree
map <leader>t :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_console_startup = 0

