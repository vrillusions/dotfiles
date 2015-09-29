" Remove tab listchars
setlocal listchars=tab:  ,trail:·,extends:»,precedes:«

" for securemodelines plugin should permit foldlevel
if exists("g:secure_modelines_allowed_items")
    let g:secure_modelines_allowed_items += ["foldlevel", "fdl"]
endif
