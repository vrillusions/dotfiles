setlocal spell
setlocal formatoptions+=ro
" The three valid unordered list characters are -, *, and +
setlocal comments=b:-,b:*,b:+


" Folding {{{1
" src: https://gist.github.com/sjl/1038710 - no explicit license
" Added section on skipping non-heading lines so it doesn't catch github style
" code blocks
func! Foldexpr_markdown(lnum)
    let l1 = getline(a:lnum)
    let syntax_name = synIDattr(synID(a:lnum, 1, 1), "name")

    if l1 =~ '^\s*$'
        " ignore empty lines
        return '='
    endif

    if syntax_name !~# 'markdownHeading.*'
        " This line is not a header line, keep previous level
        return '='
    endif

    let l2 = getline(a:lnum+1)

    if  l2 =~ '^==\+\s*'
        " next line is underlined (level 1)
        return '>1'
    elseif l2 =~ '^--\+\s*'
        " next line is underlined (level 2)
        return '>2'
    elseif l1 =~ '^#'
        " current line starts with hashes
        return '>'.matchend(l1, '^#\+')
    elseif a:lnum == 1
        " fold any 'preamble'
        return '>1'
    else
        " keep previous foldlevel
        return '='
    endif
endfunc

setlocal foldexpr=Foldexpr_markdown(v:lnum)
setlocal foldmethod=expr

"---------- everything after this is optional -----------------------
" change the following fold options to your liking
" see ':help fold-options' for more
setlocal foldenable
setlocal foldlevel=1
setlocal foldcolumn=1

" vim: set fdm=marker:
