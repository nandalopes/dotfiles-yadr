" tComment
" ========================================
" extensions for tComment plugin. Normally
" tComment maps 'gcc' to comment current line
" this adds 'gcp' comment current paragraph (block)
" using tComment's built in <c-_>p mapping
nmap <silent> gcp <c-_>p

" Commentary mappings
if LINUX()
  " Use ,/ to toggle comments
  map <leader>/ :tComment<CR>
  imap <leader>/ <ESC>:tComment<CR>i
else
  " Use D-/ to toggle comments
  map <D-/> :tComment<CR>
  imap <D-/> <ESC>:tComment<CR>i
endif
