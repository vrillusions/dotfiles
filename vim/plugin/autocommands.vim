" various autocommands

" TODO:2013-12-09:teddy: add a check for vim 7+ or don't load

" src: http://stackoverflow.com/q/3105307
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
"
" I added the silent! but not the bufname check to see if just this works
autocmd CursorMovedI * if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif
