" Minimum recommended version of vim is 7.0

set nocompatible                " Use Vim settings, rather than Vi settings

" Windows tweaks {{{1
if has("win32") || has("win64")
  " I use ~/.vim on windows too
  set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
  set fileformat=unix           " Make new files with unix line endings
endif

" Load pathogen {{{1
call pathogen#infect()
call pathogen#helptags()

" Basic settings {{{1
set enc=utf-8                   " Always use UTF-8 encoding (needed for listchars)
set backspace=indent,eol,start  " backspace over everything in insert mode
set backup                      " keep a backup file
set backupskip=/tmp/*           " but not of files in /tmp
set history=1000                " how many lines of command line history to keep
set ruler                       " show the cursor position all the time
set showcmd                     " display incomplete commands
set hlsearch                    " highlight searched for phrases
set incsearch                   " do incremental searching
set ignorecase                  " ignore case when searching
set smartcase                   " except when the search string has capitalization
set showmatch                   " show matching brackets
set laststatus=2                " always show status line
set background=dark             " we are using a dark background
set backupdir=~/.vim/backup     " where to save backups
set directory=~/.vim/backup//   " where to save .swp files ('//' is intentional, see help)
set noerrorbells                " be quiet
set vb                          " I really mean it
set t_vb=                       " not a sound
set scrolloff=3                 " start scrolling 3 lines before end
set sidescrolloff=3             " same, but for columns
set hidden                      " hide buffers when I switch
set splitbelow                  " make new split behavior more 'natural'
set splitright
set shortmess+=I                " don't show intro message when starting vim
if has('mouse')
  set mouse=a                   " use mouse everywhere (when terminal supports it)
endif
set viminfo+=n~/.vim/.viminfo   " user directory in windows is ~/.vim as well for this reason
set lazyredraw                  " don't redraw screen so often
set foldlevel=1                 " close all but top folds

" Format options {{{1
set formatoptions+=1            " don't wrap on a single letter
set formatoptions+=l            " don't autowrap if line is already longer than textwidth

" Delete comment character when using 'J' command to join lines
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j
endif

" Improved tab completion {{{1
set wildmenu                    " make tab completion for files and buffers act like bash
set wildmode=list:longest,full  " tab completion list matches, then longest string, then all
" Files to ignore (this is also the list used by ctrlP)
set wildignore+=~/.vim/undofiles/*,~/.vim/backup/*,*.swp  " vim working files
set wildignore+=*.DS_Store          " macs
set wildignore+=*.py?               " python
set wildignore+=*.class             " java
set wildignore+=*.jpg,*.bmp,*.gif   " images

" Statusline setup {{{1
" NOTE: removed spaces between separator in case that gives problems
set statusline=%<%F%h%m%r%h%w%y " all the standard flags
set statusline+=\ fmt:%{&ff}    " file format
set statusline+=%=              " separate left and right side
set statusline+=\ %l\,%c%V      " Line,Column of cursor
set statusline+=\ %P            " Percentage of file

" Default editor settings {{{1
" per language settings are in $VIMRUNTIME/after/ftplugin/
set tabstop=4                       " spaces per tab
set softtabstop=4                   " spaces per tab (when editing)
set shiftwidth=4                    " spaces per tab (when shifting)
set shiftround                      " always indent by multiple of shiftwidth
set expandtab                       " use spaces instead of tabs
set list                            " display tabs and trailing spaces
set listchars=tab:»·,trail:·,nbsp:·,extends:»,precedes:« " what characters to use
set autoindent                      " Turn autoindent on globally, safe to use with filetype indent
set nosmartindent                   " smartindent never seemed to work right for me
set textwidth=0                     " 0 disables automatic line wrapping

" Syntax highlighting {{{1
" Switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || has("gui_running")
  syntax on
endif

" Use mustang color scheme if terminal supports 256 color
" While I like solarized it seems to require changing the colors in terminal
" emulator where mustang works just fine with defaults
" Note if your terminal can do 256 color set it's TERM to xterm-256color
if &t_Co >= 256 || has("gui_running")
  colorscheme desert256

  " NOTE: when loading a color scheme (specifically setting the ctermbg value
  " for 'Normal' highlight) the value for background gets reloaded. This
  " clears the background color and should reset the value for background in
  " case plugins rely on it. See :help hi-normal-cterm
  "
  " desert256 doesn't change the background color so these aren't needed. Kept
  " them around in case I change my mind again.
  "hi Normal ctermbg=NONE
  "hi NonText ctermbg=NONE
endif

" Cursor line {{{1
" Important: the highlight command must come after setting color scheme
set cursorline            " highlight row cursor is on
" For desert256 need to add a background color too
"hi CursorLine cterm=NONE  " Don't underline it. Assumes colorscheme sets color
hi CursorLine cterm=NONE ctermbg=235

" Plugin settings {{{1
" NERDTree {{{2
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1          " Quit on opening files from the tree
let NERDTreeBookmarksFile = expand("$HOME/.vim/NERDTreeBookmarks")
let NERDTreeShowBookmarks = 1       " Show bookmarks table on startup
let NERDTreeHighlightCursorline = 1 " Highlight cursor line
let NERDTreeShowFiles = 1           " Show files
let NERDTreeShowHidden = 1          " Including hidden
" Ignored files for NERDTree
let NERDTreeIgnore=[ '\.py?$', '\.DS_Store' ]

" ctrlP {{{2
nmap <Leader>m      :CtrlPMRU<CR>
let g:ctrlp_show_hidden = 1     " show hidden files
let g:ctrlp_open_new_file = 'r' " open new file in current window
let g:ctrlp_clear_cache_on_exit = 0  " persist cache files

" todotag {{{2
let g:todotag_owner = 'teddy'  " Just always go by teddy since it's shorter than 'vrillusions'

" securemodelines {{{2
" have to specify full list
let g:secure_modelines_allowed_items = [
            \ "textwidth",   "tw",
            \ "softtabstop", "sts",
            \ "tabstop",     "ts",
            \ "shiftwidth",  "sw",
            \ "expandtab",   "et",   "noexpandtab", "noet",
            \ "filetype",    "ft",
            \ "foldmethod",  "fdm",
            \ "readonly",    "ro",   "noreadonly", "noro",
            \ "rightleft",   "rl",   "norightleft", "norl",
            \ "cindent",     "cin",  "nocindent", "nocin",
            \ "smartindent", "si",   "nosmartindent", "nosi",
            \ "autoindent",  "ai",   "noautoindent", "noai",
            \ "spell",  "nospell",
            \ "spelllang",
            \ "list", "nolist"
            \ ]

" SimpylFold {{{2
let g:SimpylFold_docstring_preview = 1  " Show first line of docstring

" buffing wheel and bbye {{{2
" This depends on bbye plugin <https://github.com/moll/vim-bbye>
" Use the Bdelete command from bbye instead of default bdelete so vim doesn't
" close windows when I close the buffer.
" BUG: because .vimrc is loaded before the pathogen plugins there's no way to
" verify Bdelete.
let g:BuffingWheelSkipMappings = 1
command BuffingWheelClose call buffingwheel#cmd('Bdelete')
noremap <silent> L :<C-u>BuffingWheelNext<CR>
noremap <silent> H :<C-u>BuffingWheelPrevious<CR>
noremap <silent> X :<C-u>BuffingWheelClose<CR>

" XMLEdit {{{2
let g:xmledit_enable_html = 1   " Enable for html files

" Syntax file settings {{{1
" Specified here to make sure they're set before syntax files are loaded
"
let g:changelog_spacing_errors = 0  " see ft-changelog-syntax
let g:python_highlight_all = 1      " see ft-python-syntax
let g:ruby_fold = 1                 " see ft-ruby-syntax
"let g:ruby_no_comment_fold = 1      " see ft-ruby-syntax
let g:xml_syntax_folding = 1        " see ft-xml-syntax

" Vim v7.3+ settings {{{1
if v:version >= 703
  " Enable persistant undu
  set undodir=~/.vim/undofiles
  set undofile

  " Mark ideal text width (set by textwidth)
  set colorcolumn=+1
endif

" Autocommands and tweaks {{{1
" turn on filetype plugins and filetype indent files. This sources
" $VIMRUNTIME/filetype.vim for custom filetype mappings and also the specific
" filetype from $VIMRUNTIME/after/plugin/ directory (use '/after/' directory
" so you can override what the os vendor supplied one does). Indentation
" rarely needs touched although some files provide options you can toggle. see
" help topics 'filetype-plugin' and 'indent-expression'.
filetype plugin indent on

"spell check when writing commit logs {{{2
autocmd filetype svn,*commit* set spell

"jump to last cursor position when opening a file {{{2
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

" Load a template when creating a new file {{{2
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

" Delete empty buffers when hiding them {{{2
" this is a side effect from having 'set hidden' and using --remote option
" ref: http://stackoverflow.com/questions/12328277/vim-remote-silent-always-opens-no-name-buffer-for-first-file
if bufname('%') == ''
    set bufhidden=wipe
endif

" Load local settings if exists {{{1
if filereadable(expand("~/.vimrc_local"))
  source ~/.vimrc_local
endif

" Enable secure mode {{{1
" Prevents certain dangerous commands from running when loading a .vimrc or
" .exrc file in the current directory (requires 'set exrc'). Placed this at
" end of this file to highlight that it only affects vimrc configs at the
" local directory level.  Even if this was at the top of ~/.vimrc it will run
" any exec calls you specify (except in certain cases, see :help secure for
" more info)
set secure

" vim: set et ts=2 sw=2 sts=2 fdm=marker:
