" ============================
" SplitJoin plugin
" ============================
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>


" ,/ to toggle comments
map <Leader>/ :Commentary<CR>
imap <Leader>/ <Esc>:Commentary<CR>i


" Close buffer with bbye-vim
nnoremap Q :Bdelete<CR>


" Unimpaired configuration
" https://github.com/carlhuda/janus/blob/master/vimrc
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

