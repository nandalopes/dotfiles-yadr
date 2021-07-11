if (!has('nvim'))
  " Make traditional vim aware of this folder so Plug can install itself in
  " there as well
  let &rtp = &rtp . ',  ~/.local/share/nvim/site/'
endif

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin('~/.local/share/nvim/site/plugged')

let pluginPath = '~/.config/nvim/plugins'

for fpath in split(globpath(pluginPath, '*.vim'), '\n')
  if (fpath != expand(pluginPath) . "/main.vim") " skip main.vim (this file)
    exe 'source' fpath
  endif
endfor

" The plugins listed in ~/.config/nvim/.local.vim will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/nvim/.local.vim"))
  source ~/.yadr/nvim/.local.vim
endif

call plug#end()
