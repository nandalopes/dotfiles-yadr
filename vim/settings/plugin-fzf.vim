" ,t to fuzzy search files in vcs
nnoremap <Leader>t :GFiles<CR>

" ,b to fuzzy search buffers
nnoremap <Leader>b :Buffers<CR>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map <Leader>ja :Files app/assets<CR>
map <Leader>jm :Files app/models<CR>
map <Leader>jc :Files app/controllers<CR>
map <Leader>jv :Files app/views<CR>
map <Leader>jj :Files app/assets/javascripts<CR>
map <Leader>jh :Files app/helpers<CR>
map <Leader>jl :Files lib<CR>
map <Leader>jp :Files public<CR>
map <Leader>js :Files spec<CR>
map <Leader>jf :Files fast_spec<CR>
map <Leader>jd :Files db<CR>
map <Leader>jC :Files config<CR>
map <Leader>jV :Files vendor<CR>
map <Leader>jF :Files factories<CR>
map <Leader>jT :Files test<CR>

" Cmd-Shift-P to clear the cache
"nnoremap <silent> <D-P> :ClearCtrlPCache<cr>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
"nnoremap <silent> <D-M> :CtrlPBufTag<CR>

