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
Plug 'tpope/vim-commentary'                                     " Comments for your code

" File management
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " Fuzzy finder
Plug 'junegunn/fzf.vim',                                        " Fuzzy finder
Plug 'pbogut/fzf-mru.vim'                                       " Plugin for fzf to search recent files
Plug 'tpope/vim-vinegar'                                        " Quickly open netrw in the current dir

" Keybindings
Plug 'liuchengxu/vim-which-key'                                 " Keybind reference

" Project management
Plug 'benwainwright/fzf-project'                                " Project management

" Themes
Plug 'drewtempelmeyer/palenight.vim'                            " Palenight theme
Plug 'vim-airline/vim-airline-themes'                           " Status bar themes

" UI
Plug 'preservim/nerdtree'                                       " File explorer
Plug 'vim-airline/vim-airline'                                  " Status bar
Plug 'ryanoasis/vim-devicons'                                   " Icons for the file explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                  " Colors for the file explorer


" Version Control
Plug 'Xuyuanp/nerdtree-git-plugin'                              " Git integration for the file explorer
Plug 'tpope/vim-fugitive'                                       " Git integration
Plug 'airblade/vim-gitgutter'                                   " Git integration for the gutter

call plug#end()
