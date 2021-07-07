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

" Keybindings
Plug 'liuchengxu/vim-which-key'

" Project management
Plug 'airblade/vim-rooter'

" Themes
Plug 'drewtempelmeyer/palenight.vim'  " Palenight theme

" UI
Plug 'preservim/nerdtree'             " File explorer
Plug 'Xuyuanp/nerdtree-git-plugin'    " Git integration for the file explorer
Plug 'vim-airline/vim-airline'        " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes
Plug 'ryanoasis/vim-devicons'         " Icons for the file explorer
Plug 'airblade/vim-gitgutter'         " Git integration for the gutter

" Version Control
Plug 'tpope/vim-fugitive'             " Git integration

call plug#end()
