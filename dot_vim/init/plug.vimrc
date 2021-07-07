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

" Plugins
call plug#begin()

" UI
Plug 'preservim/nerdtree'             " File explorer
Plug 'Xuyuanp/nerdtree-git-plugin'    " Git integration for the file explorer
Plug 'airblade/vim-gitgutter'         " Git integration for the gutter
Plug 'vim-airline/vim-airline'        " Status bar
Plug 'vim-airline/vim-airline-themes' " Status bar themes

" Version control
Plug 'tpope/vim-fugitive'

call plug#end()
