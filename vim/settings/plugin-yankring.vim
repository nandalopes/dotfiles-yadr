let g:yankring_history_file = '.yankring-history'
nnoremap <Leader>yr :YRShow<CR>
nnoremap C-y :YRShow<CR>

function! YRRunAfterMaps()
  nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction
