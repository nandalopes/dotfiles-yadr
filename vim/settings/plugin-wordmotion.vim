"" In place of camelcasemotion
" let g:wordmotion_prefix = '<Bslash>'

" let g:wordmotion_spaces = ['\w\@<=-\w\@=', '\.']

" let g:wordmotion_mappings = {
" 	\ 'w' : '<Bslash>w',
" 	\ 'b' : '<Bslash>b',
" 	\ }
"

let g:wordmotion_nomap = 1

" nnoremap <Leader>w  <Plug>WordMotion_w
" nnoremap B          <Plug>WordMotion_b
" nnoremap gE         <Plug>WordMotion_gE
" onoremap aW         <Plug>WordMotion_aW
" cnoremap <C-R><C-W> <Plug>WordMotion_<C-R><C-W>

let g:wordmotion_mappings = {
 	\ 'w' : '<Bslash>w',
 	\ 'b' : '<Bslash>b',
 	\ 'e' : '<Bslash>e',
  \ '<Bslash>b' : '<Plug>WordMotion_b'
 	\ }

