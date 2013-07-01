" Pickup new changes if not changed in vim. Used to this in gui editors but
" not command line, so it's only mentioned here.
set autoread

" gvim supports 256 colors
set t_Co=256

" show line numbers in gui (another thing used to gui editors)
set number

" stop cursor blinking
set guicursor+=n-v-c:blinkon0

" use dark solarized color scheme
set background=dark
colorscheme solarized

" begin OS specifics options
if has("gui_macvim")
    " MacVIM
    set lines=45 columns=126    " width is to allow nerdTree
    set guioptions-=T           " disable toolbar
    set guifont=Inconsolata:h14 " MacVIM parses guifont differently
elseif has("win32") || has("win64")
    " Windows
    set lines=50 columns=106    " width is 106 to allow 100 + line numbers
    set guioptions-=T           " disable toolbar
    set guifont=Consolas:h12
else
    " use standard syntax to set font
    set guifont=Inconsolata\ 12
endif
