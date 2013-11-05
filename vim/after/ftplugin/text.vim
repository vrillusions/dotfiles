setlocal textwidth=78
setlocal spell
" Lists typically start with - or *
setlocal comments=b:#,fb:-,fb:*,fb:+

" Part of this from https://gist.github.com/sjl/1038710
"function! TextFoldexpr(lnum)
"    let l1 = getline(a:lnum)
"    if l1 =~ '^\s*$'
"        " ingore empty lines
"        return '='
"    endif
"
"    let l2 = getline(a:lnum+1)
"    if l2 =~ '^==\+\s*'
"        " Fold on ==s
"        return '>1'
"    else
"        " Keep previous level
"        return '='
"    endif
"endfunction
"
"setlocal foldexpr=TextFoldexpr(v:lnum)
"setlocal foldmethod=expr
