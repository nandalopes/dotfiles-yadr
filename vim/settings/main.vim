" ================ General Config ====================

set number                     " Show absolute line numbers on the left.
set relativenumber             " Show relative line numbers on the left.
set backspace=indent,eol,start " Allow backspace in insert mode
set history=1000               " Store lots of :cmdline history
set showcmd                    " Show incomplete cmds down the bottom
set showmode                   " Show current mode down the bottom
set guicursor=a:blinkon0       " Disable cursor blink
set visualbell                 " No sounds
set autoread                   " Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Set cursor line
set cursorline
" Don't highlight it's line number
highlight! link CursorLineNr LineNr

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowritebackup

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  if !isdirectory(expand('~').'/.cache/vim/backups')
    silent !mkdir -p ~/.cache/vim/backups > /dev/null 2>&1
  endif
  set undodir=~/.cache/vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent    " Minimal automatic indenting for any filetype
set smartindent   " Do smart autoindenting when starting a new line

"" Tabs. May be overridden by autocmd rules
" http://romainl.github.io/the-patient-vimmer/0.html#_problem_6_huge_tabs
set smarttab
set shiftwidth=2  " Arrow function (>>) creates 2 spaces
set softtabstop=2 " Number of spaces per Tab - if negative, will use shiftwidth
set tabstop=2     " Tab equal 2 spaces (default 8)
set expandtab     " Use spaces instead of a tab charater on TAB
set shiftround    " Shift to the next round tab stop. Aka When at 3 spaces, hit >> to go to 4, not 5 if your shiftwidth is set to 2.

" Some file types use real tabs
au FileType {make} set noexpandtab shiftwidth=4

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap    " Don't wrap lines
set linebreak " Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent " fold based on indent
set foldnestmax=3     " deepest fold is 3 levels
set nofoldenable      " dont fold by default

" ================ Completion =======================

set wildmenu " enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest

" stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=6      " Start scrolling when we're 6 lines away from margins
set sidescrolloff=12
set sidescroll=1

" ================ Search ===========================

set incsearch   " Find the next match as we type the search
set hlsearch    " Highlight searches by default
set ignorecase  " Ignore case when searching...
set smartcase   " ...unless we type a capital

" ================ Formatting =======================
set formatoptions+=j " Delete comment character when joining commented lines

" ================ Modelines ==========================
set modelines=10
set modeline

