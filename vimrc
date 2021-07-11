" Custom Settings: BEFORE
call yadr#SourceDirectory( "~/.vim/settings/before" )
" source ~/.vimrc.before if it exists.
" It is intended to allow overriding <Leader>.
call yadr#SourceIfExists( "~/.vimrc.before" )


" Plugins Installation
call yadr#SourceIfExists( "~/.vim/plugins.d/main.vim" )


" Main Settings & Plugins Configuration
call yadr#SourceDirectory( "~/.vim/settings" )


" Custom Settings: AFTER
call yadr#SourceDirectory( "~/.vim/settings/after" )
" This loads after the yadr plugins so that plugin mappings can be overwritten.
call yadr#SourceIfExists( "~/.vimrc.after" )
