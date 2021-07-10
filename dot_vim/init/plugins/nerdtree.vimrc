" Colemak bindings
let NERDTreeMapOpenExpl="i" " Navigate to the node
let NERDTreeMenuUp="e"
let NERDTreeMapOpenSplit="<C-v>"
let NERDTreeMapOpenVSplit="<C-s>"

" Automatically close NERDTree on opening a file
let NERDTreeQuitOnOpen = 1

" Automatically close NERDTree if its the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Automatically delete buffers when their file is deleted in NERDTree
let NERDTreeAutoDeleteBuffer = 1

" UI tweaks
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Custom t
function! NerdTreeToggleFind()
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
        NERDTreeClose
    elseif filereadable(expand('%'))
        NERDTreeFind
    else
        NERDTree
    endif
endfunctionoggle
