" use light solarized color scheme
set background=light
colorscheme solarized

" begin macvim specifics
if has("gui_macvim")
    " disable toolbar
    set guioptions-=T

    " macvim parses guifont differently
    set guifont=Inconsolata:h12
elseif has("win32") || has("win64")
    set guifont=Consolas:h12
else
    " use standard syntax to set font
    set guifont=Inconsolata\ 12
endif
