"///// General
set nocompatible

" Set encoding to UTF-8
set encoding=UTF-8

" Enable filetype plugins
filetype plugin on

" Enable syntax highlighting
syntax enable

" Undo persists on even on switching buffers
set hidden

" Enable relative line numbers
:set number relativenumber

" Trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Set ruler
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"///// Search

" Search as characters are entered
set incsearch

" Highlight search matches
set hlsearch

" Autocomplete for command menu
set wildmenu


"///// Splits
set splitbelow


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


"///// Term
set termwinsize=10x0
set ttimeoutlen=25


"///// Theme

" True colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Colorscheme
set background=dark
colorscheme palenight

" Italics
let g:palenight_terminal_italics=1


