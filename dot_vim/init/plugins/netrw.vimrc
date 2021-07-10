" Colemak remaps
augroup colemak_netrw
    autocmd!
    autocmd filetype netrw call Colemak_for_netrw()
augroup END
function! Colemak_for_netrw()
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
