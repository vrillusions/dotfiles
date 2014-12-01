" Python settings
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

" I've set these in my main vimrc but worth emphasizing their importance
"set list                      " display tabs and trailing spaces
"set listchars=tab:»·,trail:·  " what characters to use

" This seems to get set automatically but setting it here just in case
setlocal omnifunc=pythoncomplete#Complete

" python specific abbreviations
iab <buffer> ifmain if __name__ == "__main__":
" start debugger environment here
iab <buffer> pdbtrace import pdb; pdb.set_trace()
