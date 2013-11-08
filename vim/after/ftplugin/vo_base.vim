" Disable listchars in outlines
setlocal nolist

" After setting syntax a lot of times background will get reset to light which
" will mess up the syntax coloring vimoutliner does. So force the syntax only
" in non-gui as it seems to be handled correctly in gui
if ! has("gui_running")
    colorscheme vo_dark
endif

" for securemodelines plugin should permit foldlevel
if exists("g:secure_modelines_allowed_items")
    let g:secure_modelines_allowed_items += ["foldlevel", "fdl"]
endif
