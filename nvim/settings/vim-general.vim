set relativenumber number

set diffopt+=vertical
set clipboard+=unnamedplus
set list listchars=tab:\ \ ,trail:·

set gcr=a:blinkon0  "Disable cursor blink
set visualbell      "No sounds

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================

" Keep undo history across sessions, by storing in file.
" Only works all the time.
set undofile

" ================ Indentation ======================

set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=4
set expandtab
" Some file types use real tabs
au FileType {make} set noexpandtab sw=4

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

set nowrap    "Don't wrap lines
set linebreak "Wrap lines at convenient points

" ================ Folds ============================

set foldenable
set foldmethod=manual "fold based on indent
set foldlevelstart=10 "Open most of the folds by default. If set to 0, all folds will be closed.
set foldnestmax=10    "Folds can be nested. Setting a max value protects you from too many folds.

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
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

set scrolloff=6       "Start scrolling when we're 6 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set ignorecase " Ignore case when searching...
set smartcase  " ...unless we type a capital

" ================ Formatting =======================
set formatoptions+=j " Delete comment character when joining commented lines