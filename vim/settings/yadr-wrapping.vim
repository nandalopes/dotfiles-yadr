" http://vimcasts.org/episodes/soft-wrapping-text/
function! SetupWrapping()
  set wrap linebreak nolist
  set showbreak=…
endfunction

" TODO: this should happen automatically for certain file types (e.g. markdown)
command! -nargs=* Wrap :call SetupWrapping()<CR>

"vmap <D-j> gj
"vmap <D-k> gk
"vmap <D-$> g$
"vmap <D-^> g^
"vmap <D-0> g^
"nmap <D-j> gj
"nmap <D-k> gk
"nmap <D-$> g$
"nmap <D-^> g^
"nmap <D-0> g^

" Linux remaps
vmap <A-d> gj
vmap <A-k> gk
vmap <A-$> g$
vmap <A-0> g^
nmap <A-d> gj
nmap <A-k> gk
nmap <A-$> g$
nmap <A-0> g^
