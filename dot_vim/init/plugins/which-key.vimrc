" Bind space to which-key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Bind comma to which-key
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Prefix dictionary
let g:which_key_map = {}

" Define a separator
let g:which_key_sep = '→'

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Disable floating window
let g:which_key_use_floating_win = 0

" Tab binding
let g:which_key_map['\<TAB>'] = [':e#', 'last-buffer']

" F bindings
let g:which_key_map.f = {
  \ 'name' : '+file'            ,
  \ 's'    : [':w'              , 'file-save']		      ,
  \ 't'	   : [':NERDTreeToggle' , 'toggle-filetree']    ,
  \ 'v'    : [':NERDTreeFind'   , 'reveal-in-filetree'] ,
  \}

" Q bindings
let g:which_key_map.q = {
  \ 'name' : '+quit'	,
  \ 'q'	 : [':qa'  	  , 'quit'],
  \ 'Q'	 : [':qa!'    , 'quit-without-saving'],
  \}

" Register which-key
call which_key#register('<Space>', "g:which_key_map")

