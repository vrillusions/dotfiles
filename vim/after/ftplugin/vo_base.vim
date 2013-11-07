" Disable listchars in outlines
setlocal nolist

" for securemodelines plugin should permit foldlevel
if exists("g:secure_modelines_allowed_items")
    let g:secure_modelines_allowed_items += ["foldlevel", "fdl"]
endif
