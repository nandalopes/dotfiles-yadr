" ========================================
" Linux specific General vim sanity improvements
" ========================================
"
" ========================================
" RSI Prevention - keyboard remaps
" ========================================
" Certain things we do every day as programmers stress
" out our hands. For example, typing underscores and
" dashes are very common, and in position that require
" a lot of hand movement. Vim to the rescue
"
" Now using the middle finger of either hand you can type
" underscores with ,k or ,d, and add Shift
" to type dashes
imap <silent> <Leader>k _
imap <silent> <Leader>d _
imap <silent> <Leader>K -
imap <silent> <Leader>D -

" Change inside various enclosures with \" and \'
" The f makes it find the enclosure so you don't have
" to be standing inside it
nnoremap \' f'ci'
nnoremap \" f"ci"
nnoremap \( f(ci(
nnoremap \) f)ci)
nnoremap \[ f[ci[
nnoremap \] f]ci]

" ==== NERD tree
" ,N for nerd tree
nmap \N :NERDTreeToggle<CR>

" move up/down quickly by using Alt-j, Alt-k
" which will move us around by functions
nnoremap <silent> \j }
nnoremap <silent> \k {
autocmd FileType ruby map <buffer> \j ]m
autocmd FileType ruby map <buffer> \k [m
autocmd FileType rspec map <buffer> \j }
autocmd FileType rspec map <buffer> \k {
autocmd FileType javascript map <buffer> \j }
autocmd FileType javascript map <buffer> \k {

" ,/ to toggle comments
map <Leader>/ :TComment<CR>
imap <Leader>/ <Esc>:TComment<CR>i

" Use Alt- numbers to pick the tab you want
map <silent> <A-1> :tabn 1<cr>
map <silent> <A-2> :tabn 2<cr>
map <silent> <A-3> :tabn 3<cr>
map <silent> <A-4> :tabn 4<cr>
map <silent> <A-5> :tabn 5<cr>
map <silent> <A-6> :tabn 6<cr>
map <silent> <A-7> :tabn 7<cr>
map <silent> <A-8> :tabn 8<cr>
map <silent> <A-9> :tabn 9<cr>

" Use ,t numbers to pick the tab you want
map <silent> <Leader>t1 :tabn 1<cr>
map <silent> <Leader>t2 :tabn 2<cr>
map <silent> <Leader>t3 :tabn 3<cr>
map <silent> <Leader>t4 :tabn 4<cr>
map <silent> <Leader>t5 :tabn 5<cr>
map <silent> <Leader>t6 :tabn 6<cr>
map <silent> <Leader>t7 :tabn 7<cr>
map <silent> <Leader>t8 :tabn 8<cr>
map <silent> <Leader>t9 :tabn 9<cr>

" Resize windows with arrow keys
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right>  <C-w>>

" ============================
" Tabularize - alignment
" ============================
" Hit ,A then type a character you want to align by
nmap <Leader>A :Tabularize /
vmap <Leader>A :Tabularize /

" highlight all occurrences of current word
" (similar to regular * except doesn't move)
map <silent> <A-*> *N

" Source current file Alt-% or ,vr (good for vim development)
map <A-%> :so %<CR>
