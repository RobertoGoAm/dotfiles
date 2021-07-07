"///// General
set nocompatible

" Enable filetype plugins
filetype plugin on

" Enable syntax highlighting
syntax enable

" Undo persists on even on switching buffers
set hidden


"///// Tabs and spacing

" Typical backspace behavior
set backspace=2

" Convert tabs to spaces
set expandtab

" Change tab to 2 spaces
set tabstop=2
set softtabstop=2

" Automatic indent to 2 spaces
set shiftwidth=2


""///// Theme

" Colorscheme
colorscheme doom-one
set background=dark

""///// Search

" Search as characters are entered
set incsearch

" Highlight search matches
set hlsearch

" Autocomplete for command menu
set wildmenu 