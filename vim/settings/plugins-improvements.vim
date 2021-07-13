" ============================
" SplitJoin plugin
" ============================
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>


" ,/ to toggle comments
if LINUX()
  map <Leader>/ :Commentary<CR>
  imap <Leader>/ <Esc>:Commentary<CR>i
else
  map <D-/> :Commentary<CR>
  imap <D-/> <Esc>:Commentary<CR>i
endif


" Close buffer with bbye-vim
nnoremap Q :Bdelete<CR>

" ============================
" Tabularize - alignment
" ============================
" Hit ,A then type a character you want to align by
" if LINUX()
"   nmap <Leader>A :Tabularize /
"   vmap <Leader>A :Tabularize /
" else
"   nmap <D-A> :Tabularize /
"   vmap <D-A> :Tabularize /
" endif


" Unimpaired configuration
" https://github.com/carlhuda/janus/blob/master/vimrc
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

