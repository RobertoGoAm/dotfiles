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
Plug 'rhysd/clever-f.vim'                                       " More comfortable char motions
Plug 'neoclide/coc.nvim', {'branch': 'release'}                 " Programming language features
Plug 'mattn/emmet-vim'                                          " Expanding abbreviations for html and css
Plug 'unblevable/quick-scope'                                   " Highlight chars in a line to help with jumps
Plug 'tpope/vim-commentary'                                     " Comments for your code
Plug 'easymotion/vim-easymotion'                                " Code jumping
Plug 'tommcdo/vim-exchange'                                     " Make text change places
Plug 'tpope/vim-surround'                                       " Quoting/parenthesizing made simple
Plug 'vim-test/vim-test'                                        " Testing
Plug 'chaoren/vim-wordmotion'                                   " Better detection for word motions
Plug 'liuchengxu/vista.vim'                                     " Symbol navigation

" Editing
Plug 'jiangmiao/auto-pairs'                                     " Edit delimiters in pairs
Plug 'frazrepo/vim-rainbow'                                     " Rainbow colors for delimiters
Plug 'tpope/vim-repeat'                                         " Repeat plugin commands with .
Plug 'mg979/vim-visual-multi', {'branch': 'master'}             " Multiple cursors

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

" - CSS
Plug 'gko/vim-coloresque'                                       " Color highlight for color codes

" Project management
Plug 'benwainwright/fzf-project'                                " Project management
Plug 'editorconfig/editorconfig-vim'                            " Configure vim according to project settings

" Search
Plug 'junegunn/vim-slash'                                       " Better default search

" Themes
Plug 'drewtempelmeyer/palenight.vim'                            " Palenight theme
Plug 'vim-airline/vim-airline-themes'                           " Status bar themes

" UI
Plug 'preservim/nerdtree'                                       " File explorer
Plug 'markonm/traces.vim'                                       " Preview regex replace with highlight
Plug 'vim-airline/vim-airline'                                  " Status bar
Plug 'ryanoasis/vim-devicons'                                   " Icons for the file explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                  " Colors for the file explorer
Plug 'psliwka/vim-smoothie'                                     " Smoother scrolling

" Version Control
Plug 'Xuyuanp/nerdtree-git-plugin'                              " Git integration for the file explorer
Plug 'tpope/vim-fugitive'                                       " Git integration
Plug 'ruanyl/vim-gh-line'                                       " Repository navigation
Plug 'airblade/vim-gitgutter'                                   " Git integration for the gutter
Plug 'danarye/vim-merginal'                                     " Easier Git branch management

call plug#end()
