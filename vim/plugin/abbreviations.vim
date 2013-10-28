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
iabbrev xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
