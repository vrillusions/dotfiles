" Puppet specifics (uses 2 instead of 4 space indents)
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal smarttab
setlocal expandtab
setlocal fileencoding=utf-8
" since we don't set textwidth this has to be an exact number to the position
" that will be colored. Also this is a v7.3+ option so need to check if exists
if exists('+colorcolumn')
    setlocal colorcolumn=81
endif
