" source of this:
" http://henry.precheur.org/2008/4/18/Indenting_Python_with_VIM.html
" http://people.smu.edu/jrobinet/howto/customize-vim.asp
setlocal tabstop=4 
setlocal softtabstop=4 
setlocal shiftwidth=4
setlocal textwidth=80
setlocal formatoptions-=t   " don't autowrap code at textwidth
setlocal formatoptions+=c   " but I want comments to autowrap
setlocal smarttab
setlocal expandtab
setlocal autoindent
setlocal fileencoding=utf-8 

" This seems to get set automatically but setting it here just in case
setlocal omnifunc=pythoncomplete#Complete

" python specific abbreviations
iab <buffer> ifmain if __name__ == "__main__":
