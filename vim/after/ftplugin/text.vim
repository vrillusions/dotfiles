setlocal textwidth=78
setlocal spell
" Lists typically start with - or *
setlocal comments=b:#,fb:-,fb:*,fb:+

" Folding {{{1
" Part of this from https://gist.github.com/sjl/1038710
" TODO:2013-11-12:teddy: should avoid '=' per manual
function! TextFoldexpr(lnum)
    let l:cur_line = getline(a:lnum)
    if l:cur_line =~ '^\s*$'
        " ingore empty lines
        return '='
    elseif l:cur_line =~ '^}}.*$'
        " A line with just '}}*' ends previous fold level
        return '<'
    endif

    let l:next_line = getline(a:lnum+1)
    if l:next_line =~ '^===\+\s*'
        " Fold on ===s
        return '>1'
    elseif l:next_line =~ '^---\+\s*'
        " ---s are level 2
        return '>2'
    else
        " Keep previous level
        return '='
    endif
endfunction

setlocal foldexpr=TextFoldexpr(v:lnum)
setlocal foldmethod=expr
" Default to only one level deep (which in most cases will be no folding)
setlocal foldlevelstart=1

" vim: set fdm=marker:
