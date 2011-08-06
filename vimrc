" Tried to make this as backwards compatible as possible. Even in vi only
" environments this shouldn't give errors, but haven't tested a lot.

" Use Vim settings, rather then Vi settings
set nocompatible

if has("win32") || has("win64")
  " I use ~/.vim on windows too
  set runtimepath=~/.vim,~/vimfiles,$VIMRUNTIME
endif

" need to specify this early or vim might complain on listchars
set enc=utf-8

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file
endif
set history=50          " how many lines of command line history to keep
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set nohlsearch          " do not highlight searched for phrases
set incsearch           " do incremental searching
if has('mouse')
  set mouse=a           " use mouse everywhere (when terminal supports it)
endif
set showmatch           " show matching brackets
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]     " a ton of info
" just useful info (don't need ASCII and HEX values often)
set statusline=%<%F%h%m%r%h%w%y\ fmt:%{&ff}\ %=\ %l\,%c%V\ %P
set laststatus=2        " always show status line
set background=dark     " we are using a dark background
set backupdir=~/.vim/backup  " where to save backups
set directory=~/.vim/backup  " where to save .swp files
set list                " display tabs and trailing spaces
set listchars=tab:»·,trail:·,nbsp:·  " what characters to use
"set autoindent          " always set autoindenting on
set nosmartindent       " smartindent never seemed to work right for me
set textwidth=0         " 0 disables automatic line wrapping
set noerrorbells        " be quiet
set vb                  " I really mean it
set t_vb=               " not a sound


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  " set hlsearch
endif

if has('filetype')
  " turn on filetype and filetype plugins, not indent (I just put those in ftplugin)
  " this sources $VIMRUNTIME/filetype.vim for custom filetype mappings and also the specific
  " filetype from $VIMRUNTIME/ftplugin/ directory
  filetype plugin on
  "filetype indent on    " I just use ftplugin for everything including indents
endif

" Source some additional files
source $HOME/.vim/abbreviations.vim    " custom abbreviations

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
endif

" Load local settings if exists
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
