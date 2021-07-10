" Colemak remaps
augroup colemak_netrw
    autocmd!
    autocmd filetype netrw call Colemak_for_netrw()
augroup END
function! Colemak_for_netrw()
  nmap <buffer> n j
  nmap <buffer> N J
  nmap <buffer> e k
  nmap <buffer> E K
  nmap <buffer> i l
  nmap <buffer> I L
  nmap <buffer> j n
  nmap <buffer> J N
  nmap <buffer> k e
  nmap <buffer> K E
  nmap <buffer> l i
  nmap <buffer> L I
endfunction
