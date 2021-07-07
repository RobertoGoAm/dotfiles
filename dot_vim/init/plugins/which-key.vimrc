" Bind space to which-key
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

" Bind comma to which-key
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" F bindings
let g:which_key_map['f'] = {
	\ 'name' : '+file' ,
	\ 's'	 : ['update'     , 'save-file']      ,
}