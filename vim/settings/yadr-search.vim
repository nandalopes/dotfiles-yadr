function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction

"grep the current word using ,k (mnemonic Kurrent)
nnoremap <silent> <Leader>k :Ag <cword><CR>

"grep visual selection
vnoremap <Leader>k :<C-U>execute "Ag " . GetVisual()<CR>

"grep current word up to the next exclamation point using ,K
nnoremap <Leader>K viwf!:<C-U>execute "Ag " . GetVisual()<CR>

"grep for 'def foo'
nnoremap <silent> <Leader>gd :Ag 'def <cword>'<CR>

",gg = Grep! - using Ag the silver searcher
" open up a grep line, with a quote started for the search
nnoremap <Leader>gg :Ag ""<left>

"Grep for usages of the current file
nnoremap <Leader>gcf :exec "Ag " . expand("%:t:r")<CR>
