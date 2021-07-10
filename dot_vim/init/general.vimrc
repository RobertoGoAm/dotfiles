"///// General
set nocompatible

" Use system clipboard
set clipboard+=unnamedplus

" Set encoding to UTF-8
set encoding=UTF-8

" Enable filetype plugins
filetype plugin indent on

" Instead of closing an unsaved file on switching to a new one, just hide it
set hidden

" Enable relative line numbers
:set number relativenumber

" Trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Set ruler
set colorcolumn=140
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Change cursor base on mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Show commands while awaiting input
set showcmd

" Always show sign column
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Highlight cursor line
set cursorline

" Taller command section
set cmdheight=2

" Disable backup files
set nobackup
set noswapfile

" Time before writting to swap file
set updatetime=300


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
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
set background=dark
colorscheme palenight
syntax on

" Italics
let g:palenight_terminal_italics=1


