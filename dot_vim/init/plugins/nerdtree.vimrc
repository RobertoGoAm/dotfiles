" Automatically close NERDTree on opening a file
let NERDTreeQuitOnOpen = 1

" Automatically close NERDTree if its the last window
autocmd bufenter * if (winnr(“$”) == 1 && exists(“b:NERDTreeType”) && b:NERDTreeType == “primary”) | q | endif

" Automatically delete buffers when their file is deleted in NERDTree
let NERDTreeAutoDeleteBuffer = 1

" UI tweaks
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
