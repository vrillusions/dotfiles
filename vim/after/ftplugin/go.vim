" Go language customizations
setlocal tabstop=6
setlocal softtabstop=6
setlocal shiftwidth=6
setlocal noexpandtab
setlocal smarttab

" ALE
" replicates how other editors will format on save
" run :ALEFixSuggest to get a lit of fixers to put here
let b:ale_fixers = ['gofmt', 'goimports']
let b:ale_fix_on_save = 1
