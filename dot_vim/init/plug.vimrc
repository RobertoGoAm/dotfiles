"/////// Auto stuff

" Auto install the plugin manager if not present
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Auto install new packages
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"////// Plugins
call plug#begin()

" Code
Plug 'neoclide/coc.nvim', {'branch': 'release'}                 " Programming language features
Plug 'easymotion/vim-easymotion'                                " Code jumping
Plug 'mattn/emmet-vim'                                          " Expanding abbreviations for html and css
Plug 'unblevable/quick-scope'                                   " Highlight chars in a line to help with jumps
Plug 'tpope/vim-commentary'                                     " Comments for your code
Plug 'tommcdo/vim-exchange'                                     " Make text change places
Plug 'tpope/vim-surround'                                       " Quoting/parenthesizing made simple
Plug 'vim-test/vim-test'                                        " Testing
Plug 'liuchengxu/vista.vim'                                     " Symbol navigation
"
" Editing
Plug 'mg979/vim-visual-multi', {'branch': 'master'}             " Multiple cursors
Plug 'jiangmiao/auto-pairs'                                     " Edit delimiters in pairs
Plug 'frazrepo/vim-rainbow'                                     " Rainbow colors for delimiters
Plug 'tpope/vim-repeat'                                         " Repeat plugin commands with .

" File management
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " Fuzzy finder
Plug 'junegunn/fzf.vim',                                        " Fuzzy finder
Plug 'pbogut/fzf-mru.vim'                                       " Plugin for fzf to search recent files

" Keybindings
Plug 'liuchengxu/vim-which-key'                                 " Keybind reference

" Navigation
Plug 't9md/vim-choosewin'                                       " Switch to specific windows
Plug 'weilbith/nerdtree_choosewin-plugin'                       " Better behavior for file explorer and choosewin

" Programming languages
" - HTML
Plug 'valloric/MatchTagAlways'                                  " Highlight matching HTML tags

" Project management
Plug 'benwainwright/fzf-project'                                " Project management
Plug 'editorconfig/editorconfig-vim'                            " Configure vim according to project settings

" Themes
Plug 'drewtempelmeyer/palenight.vim'                            " Palenight theme
Plug 'vim-airline/vim-airline-themes'                           " Status bar themes

" UI
Plug 'preservim/nerdtree'                                       " File explorer
Plug 'vim-airline/vim-airline'                                  " Status bar
Plug 'ryanoasis/vim-devicons'                                   " Icons for the file explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                  " Colors for the file explorer
Plug 'markonm/traces.vim'                                       " Preview regex replace with highlight

" Version Control
Plug 'Xuyuanp/nerdtree-git-plugin'                              " Git integration for the file explorer
Plug 'tpope/vim-fugitive'                                       " Git integration
Plug 'ruanyl/vim-gh-line'                                       " Repository navigation
Plug 'airblade/vim-gitgutter'                                   " Git integration for the gutter

call plug#end()
