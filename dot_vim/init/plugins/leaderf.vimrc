" Disable cache
let g:Lf_UseCache = 0
let g:Lf_UseMemoryCache = 0

" Colemak up and down in the leaderf window
let g:Lf_CommandMap = {'<C-K>': ['<C-e>'], '<C-J>': ['<C-n>']}

" Maps
let g:Lf_ShortcutF = "<leader>ff"
let g:Lf_ShortcutB = "<leader>bb"
let g:Lf_ShortcutM = "<Leader>br"
" noremap <leader>bb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
" noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
