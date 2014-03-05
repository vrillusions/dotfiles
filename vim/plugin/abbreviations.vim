" vim abbreviations file
"
" For reference:
"   :abbreviate  #abbreviate all modes
"   :iabbrev     #abbreviate for insert mode
"   :cabbrev     #abbreviate for the command line
"

" Command shortcuts
cabbrev sp set spell

" Text expansions
" print the current datestamp in ISO8601 format
"idt = IsoDateTime
iab idt <c-r>=strftime("%FT%T%z")<cr>

" Create a simple modeline string
iab vimml vim: set ft=text nolist :

" These are now handled by todo_comment.vim
" When entering a todo or note, add current date and my login name
"iab TODO: TODO:<c-r>=strftime("%F")<CR>:teddy:
"iab NOTE: NOTE:<c-r>=strftime("%F")<CR>:teddy:
