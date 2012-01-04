" Tried to make this as backwards compatible as possible. Even in vi only
" environments this shouldn't give errors, but haven't tested a lot.

if has("win32") || has("win64")
  " I use ~/.vim on windows too
  set runtimepath=~/.vim,~/vimfiles,$VIMRUNTIME
endif

set nocompatible                " Use Vim settings, rather than Vi settings

set enc=utf-8                   " Always use UTF-8 encoding (needed for listchars)
set backspace=indent,eol,start  " backspace over everything in insert mode
set backup                      " keep a backup file
set history=100                 " how many lines of command line history to keep
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set hlsearch                    " highlight searched for phrases
set incsearch                   " do incremental searching
set ignorecase                  " ignore case when searching
set smartcase                   " except when the search string has capitalization
set showmatch                   " show matching brackets
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]     " a ton of info
" just useful info (don't need ASCII and HEX values often)
set statusline=%<%F%h%m%r%h%w%y\ fmt:%{&ff}\ %=\ %l\,%c%V\ %P
set laststatus=2                " always show status line
set background=dark             " we are using a dark background
set backupdir=~/.vim/backup     " where to save backups
set directory=~/.vim/backup     " where to save .swp files
set noerrorbells                " be quiet
set vb                          " I really mean it
set t_vb=                       " not a sound
set scrolloff=3                 " start scrolling 3 lines before end
set sidescrolloff=3             " same, but for columns

if has('mouse')
  set mouse=a                   " use mouse everywhere (when terminal supports it)
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

" Source some additional files
source $HOME/.vim/abbreviations.vim " custom abbreviations

" when holding the alt key want to go up and down a line as I visual see it
" instead of going up and down actual lines (such as if a line wraps)
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gji

" If I forgot to sudo vi a file, use :w!! and it will run sudo, prompting for
" password
cmap w!! %!sudo tee > /dev/null %

" Vim v7.3 settings 
if v:version >= 703
  " Enable persistant undu
  set undodir=~/.vim/undofiles
  set undofile

  " Mark ideal text width (set by textwidth)
  set colorcolumn=+1
endif

if has('autocmd')
  " turn on filetype and filetype plugins, not indent (I just put those in ftplugin)
  " this sources $VIMRUNTIME/filetype.vim for custom filetype mappings and also the specific
  " filetype from $VIMRUNTIME/ftplugin/ directory
  filetype plugin on
  "filetype indent on    " I just use ftplugin for everything including indents

  "jump to last cursor position when opening a file
  "dont do it when writing a commit log entry
  autocmd BufReadPost * call SetCursorPosition()
  function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
      if line("'\"") > 0 && line("'\"") <= line("$")
        exe "normal! g`\""
        normal! zz
      endif
    end
  endfunction

  "spell check when writing commit logs
  autocmd filetype svn,*commit* set spell
  
  " Load a template when creating a new file
  autocmd! BufNewFile * silent! 0r ~/.vim/templates/tmpl.%:e
endif

" Load local settings if exists
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
