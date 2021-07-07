" Register which-key
call which_key#register('<Space>', "g:which_key_map")

" Bind space to which-key
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

" Bind comma to which-key
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Prefix dictionary
let g:which_key_map =  {}

" F bindings
let g:which_key_map.f = {
	\ 'name' : '+file' 	,
      	\ 's'    : [':w'                 , 'file-save']		,
	\ 't'	 : [':NERDTreeToggle'    , 'toggle-filetree']	,
	\}

" Q bindings
let g:which_key_map.q = {
	\ 'name' : '+quit'	,
	\ 'q'	 : [':q'  	, 'quit']			,
	\ 'Q'	 : [':qa!'  	, 'quit-without-saving']	,
	\}