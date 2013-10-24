" Minimum recommended version of vim is 7.0

set nocompatible                " Use Vim settings, rather than Vi settings

if has("win32") || has("win64")
  " I use ~/.vim on windows too
  set runtimepath=~/.vim,~/vimfiles,$VIMRUNTIME
  set fileformat=unix           " Make new files with unix line endings
endif

" Load pathogen
execute pathogen#infect()

set enc=utf-8                   " Always use UTF-8 encoding (needed for listchars)
set backspace=indent,eol,start  " backspace over everything in insert mode
set backup                      " keep a backup file
set history=1000                " how many lines of command line history to keep
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set hlsearch                    " highlight searched for phrases
set incsearch                   " do incremental searching
set ignorecase                  " ignore case when searching
set smartcase                   " except when the search string has capitalization
set showmatch                   " show matching brackets
set statusline=%<%F%h%m%r%h%w%y\ fmt:%{&ff}\ %=\ %l\,%c%V\ %P
set laststatus=2                " always show status line
set background=dark             " we are using a dark background
set backupdir=~/.vim/backup     " where to save backups
set directory=~/.vim/backup//   " where to save .swp files ('//' is intentional, see help)
set noerrorbells                " be quiet
set vb                          " I really mean it
set t_vb=                       " not a sound
set scrolloff=3                 " start scrolling 3 lines before end
set sidescrolloff=3             " same, but for columns
set wildmenu                    " make tab completion for files and buffers act like bash
set wildmode=list:full          " show a list when pressing tab complete and first full match
set wildignore=*.swp,*.bak,*.pyc,*.class,*.DS_Store " various files to ignore (also used by ctrlP)
set hidden                      " hide buffers when I switch
set shortmess+=I                " don't show intro message when starting vim

if has('mouse')
  set mouse=a                   " use mouse everywhere (when terminal supports it)
endif

" Use mustang color scheme if terminal supports 256 color
" While I like solarized it seems to require changing the colors in terminal
" emulator where mustang works just fine with defaults
" Note if your terminal can do 256 color set it's TERM to xterm-256color
if &t_Co >= 256 || has("gui_running")
  colorscheme mustang
endif

" Switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || has("gui_running")
  syntax on
endif

" default editor settings
" per language settings are in $VIMRUNTIME/after/ftplugin/
set tabstop=4                       " spaces per tab
set softtabstop=4                   " spaces per tab (when editing)
set shiftwidth=4                    " spaces per tab (when shifting)
set shiftround                      " always indent by multiple of shiftwidth
set expandtab                       " use spaces instead of tabs
set list                            " display tabs and trailing spaces
set listchars=tab:»·,trail:·,nbsp:· " what characters to use
set autoindent                      " Turn autoindent on globally
set nosmartindent                   " smartindent never seemed to work right for me
set textwidth=0                     " 0 disables automatic line wrapping

" when holding the alt key want to go up and down a line as I visual see it
" instead of going up and down actual lines (such as if a line wraps)
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gji

" More mappings
" go into "paste" mode and disable list chars (can be used for copy as well)
map <Leader>mp :set paste<CR>:set nolist<CR>

" Use (with default leader) \q to clear highlighting
nmap <Leader>q :nohlsearch<CR>

" If I forgot to sudo vi a file, use :w!! and it will run sudo, prompting for
" password
cmap w!! %!sudo tee > /dev/null %

" Delete empty buffers when hiding them
" this is a side effect from having 'set hidden' and using --remote option
" ref: http://stackoverflow.com/questions/12328277/vim-remote-silent-always-opens-no-name-buffer-for-first-file
if bufname('%') == ''
    set bufhidden=wipe
endif

" --- PLUGIN SETTINGS ---

" NERDTree
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1          " Quit on opening files from the tree
let NERDTreeBookmarksFile = expand("$HOME/.vim/NERDTreeBookmarks")
let NERDTreeShowBookmarks = 1       " Show bookmarks table on startup
let NERDTreeHighlightCursorline = 1 " Highlight cursor line
let NERDTreeShowFiles = 1           " Show files
let NERDTreeShowHidden = 1          " Including hidden
" Ignored files for NERDTree
let NERDTreeIgnore=[ '\.py?$', '\.DS_Store' ]

" MiniBufExpl
map     <Leader>t   :MBEToggle<CR>
noremap <C-TAB>     :MBEbn<CR>
noremap <C-S-TAB>   :MBEbp<CR>
let g:miniBufExplCycleArround = 1       " cycle around when reach either end
let g:miniBufExplUseSingleClick = 1     " single click a buffer to open
let g:miniBufExplForceSyntaxEnable = 1  " fix syntax highlight bugs

" ctrlP
let g:ctrlp_show_hidden = 1     " show hidden files
let g:ctrlp_open_new_file = 'r' " open new file in current window

" --- END PLUGIN SETTINGS ---


" Vim v7.3 settings 
if v:version >= 703
  " Enable persistant undu
  set undodir=~/.vim/undofiles
  set undofile

  " Mark ideal text width (set by textwidth)
  set colorcolumn=+1
endif

" --- The following (and a lot of stuff nowadays) uses autocmds ---
" turn on filetype and filetype plugins, not indent (I just put those in ftplugin)
" this sources $VIMRUNTIME/filetype.vim for custom filetype mappings and also the specific
" filetype from $VIMRUNTIME/ftplugin/ directory
filetype plugin on
"filetype indent on    " if I want to use it for indents as well

"spell check when writing commit logs
autocmd filetype svn,*commit* set spell

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
augroup set_cursor_position
  au!
  function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
      if line("'\"") > 0 && line("'\"") <= line("$")
        exe "normal! g`\""
        normal! zz
      endif
    end
  endfunction
  autocmd BufReadPost * call SetCursorPosition()
augroup END

" Load a template when creating a new file
" Idea on templating from:
"   http://dtfm.tumblr.com/post/4947427090/python-templates-in-vim
augroup load_template
  au!
  function! LoadTemplate()
    silent! 0r ~/.vim/templates/tmpl.%:e
    " Put something in these placeholders if they exist
    %s/%FILENAME%/\=expand("%:t")/ge
    %s/%DATE%/\=strftime("%b %d, %Y")/ge
    " Remove %START% and leave cursor there (should be last replacement)
    %s/%START%//ge
  endfunction
  autocmd! BufNewFile * call LoadTemplate()
augroup END

" Load local settings if exists
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
