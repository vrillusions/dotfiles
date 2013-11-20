setlocal textwidth=78
setlocal spell
" Lists typically start with - or *
setlocal comments=b:#,fb:-,fb:*,fb:+
" Auto add comment marker when hitting enter or starting new line
" TODO:2013-11-20:teddy: requires the comment tag to not have 'f' option
"setlocal formatoptions+=ro
" TODO:2013-11-20:teddy: until fixed it's better to ensure these are not set
setlocal formatoptions-=ro

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
setlocal foldlevel=1

" But have securemodelines permit foldlevel overrides
if exists("g:secure_modelines_allowed_items")
    let g:secure_modelines_allowed_items += ["foldlevel", "fdl"]
endif

" vim: set fdm=marker:
