" Colemak remaps
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  noremap <buffer> n j
  noremap <buffer> N J
  noremap <buffer> e k
  noremap <buffer> E K
  noremap <buffer> i l
  noremap <buffer> I L
  noremap <buffer> j n
  noremap <buffer> J N
  noremap <buffer> k e
  noremap <buffer> K E
  noremap <buffer> l i
  noremap <buffer> L I
endfunction
