try
" Use ripgrep for searching current directory for files
" By default, ripgrep will respect rules in .gitignore
"   --files: Print each file that would be searched (but don't search)
"   --glob:  Include or exclues files for searching that match the given glob
"            (aka ignore .git files)
"
call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])

" Use ripgrep in place of "grep"
call denite#custom#var('grep', 'command', ['rg'])

" Custom options for ripgrep
"   --vimgrep:  Show results with every match on it's own line
"   --hidden:   Search hidden directories and files
"   --heading:  Show the file name above clusters of matches from each file
"   --S:        Search case insensitively if the pattern is all lowercase
call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

" Recommended defaults for ripgrep via Denite docs
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Remove date from buffer list
call denite#custom#var('buffer', 'date_format', '')

" Custom options for Denite
"   auto_resize             - Auto resize the Denite window height automatically.
"   prompt                  - Customize denite prompt
"   direction               - Specify Denite window direction as directly below current pane
"   winminheight            - Specify min height for Denite window
"   highlight_mode_insert   - Specify h1-CursorLine in insert mode
"   prompt_highlight        - Specify color of prompt
"   highlight_matched_char  - Matched characters highlight
"   highlight_matched_range - matched range highlight
let s:denite_options = {'default' : {
\ 'auto_resize': 1,
\ 'prompt': '➜ ',
\ 'direction': 'rightbelow',
\ 'winminheight': '10',
\ 'split': 'floating',
\ 'highlight_mode_insert': 'Directory',
\ 'highlight_mode_normal': 'CursorLine',
\ 'prompt_highlight': 'Identifier',
\ 'highlight_matched_char': 'Function',
\ 'highlight_matched_range': 'Normal'
\ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)

" MAPPINGS:
" Mnemonic: *F*ind *F*iles
nnoremap <leader>ff :Denite file/rec -winrow=1<CR>
" Mnemonic: *F*ind *B*uffers
nnoremap <leader>fb :Denite buffer -winrow=1<CR>
" Mnemonic: *F*ind by *G*reping
nnoremap <leader>fg :<C-U>Denite grep:. -no-empty -mode=normal -source-names=short<CR>
" Mnemonic: *F*ind usages of *T*his file
vnoremap <leader>ft :<C-U>exec 'Denite -input="' . expand("%:t:r") . '" grep:. -mode=normal'<CR>

"Mnemonic: `j` is like clicking a link (down).
vnoremap <leader>j :<C-U>exec 'Denite -input="' . GetVisual() . '" grep:. -mode=normal'<CR>
nnoremap <leader>j :<C-U>DeniteCursorWord grep:. -mode=normal<CR>

catch
  echo 'Denite not installed. It should work after running :PlugInstall'
endtry
