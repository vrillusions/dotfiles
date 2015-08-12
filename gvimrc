" Pickup new changes if not changed in vim. Used to this in gui editors but
" not command line, so it's only mentioned here.
set autoread

" gvim supports 256 colors
set t_Co=256

" show line numbers in gui (another thing used to gui editors)
set number

" in gvim I do :wq when I really just want to :w, so force that
cmap wq w

" stop cursor blinking
set guicursor+=n-v-c:blinkon0

" disable toolbar and scroll bars (need to do -= options one at a time)
" there are more scroll bar options but these are the ones added by default
set guioptions-=T   " remove toolbar
set guioptions-=r   " right scroll bar
set guioptions-=L   " left scroll bar

" use dark solarized color scheme
set background=dark
colorscheme solarized

" For NERDTree if gui leave window open and allow single click on anything
let NERDTreeQuitOnOpen = 0 " Quit on opening files from the tree
let NERDTreeMouseMode = 3  " default is 1 (double click everything)
let NERDTreeDirArrows = 1  " fancy arrows

" begin OS specifics options
if has("gui_macvim")
    " MacVIM
    set lines=45 columns=126    " width is to allow nerdTree
    "set guifont=Inconsolata:h16
    set guifont=Office\ Code\ Pro\ D\ Light:h14
elseif has("win32") || has("win64")
    " Windows
    set lines=50 columns=126    " width is 106 to allow 100 + line numbers
    set guifont=Consolas:h12
else
    " use standard syntax to set font
    set guifont=Inconsolata\ 12
endif
