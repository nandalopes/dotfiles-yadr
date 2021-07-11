" Fix colors in terminals, set guifont, set window size
if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M

  set lines=40
  set columns=104

  if has("gui_gtk")
    set guifont=InconsolataLGC\ Nerd\ Font\ 12,FiraCode\ Nerd\ Font\ 12,Hack\ 12
  else
    set guifont=Inconsolata\ XL:h17,Inconsolata:h20,Monaco:h17
  end
else
  let g:CSApprox_loaded = 1

  if has("termguicolors")
    set termguicolors
  end

  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif

  " For people using a terminal that is not Solarized
  if exists("g:yadr_using_unsolarized_terminal")
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
  end
endif

" Enable mouse
set mouse+=a

" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L

" Disable the macvim toolbar
set guioptions-=T

" Set cursor line
set cursorline
" Don't highlight cursor line number
highlight! link CursorLineNr LineNr

