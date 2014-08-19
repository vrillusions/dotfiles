" mappings.vim - various custom mappings

" Navigate as visually shown instead of linewise {{{1
" when holding the alt key want to go up and down a line as I visual see it
" instead of going up and down actual lines (such as if a line wraps)
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gji

" Toggle paste mode {{{1
nmap <Leader>p :set invpaste paste?<CR>

" Toggle list characters {{{1
" (TODO: roll this into a TogglePaste function)
nmap <Leader>l :set list! list?<CR>

" Use <Leader><Space> to clear highlighting {{{1
nmap <Leader><Space> :nohlsearch<CR>

" Sudo write a file {{{1
" If I forgot to sudo vi a file, use :w!! and it will run sudo, prompting for
" password
cmap w!! %!sudo tee > /dev/null %

" Underline the current line with =, -, or \~ {{{1
" src: https://github.com/derekwyatt/vim-config
nmap <silent> <leader>u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> <leader>u- :t.\|s/./-/g\|:nohls<cr>
nmap <silent> <leader>u~ :t.\|s/./\\~/g\|:nohls<cr>

" Close current file but keep split {{{1
nmap <Leader>x :b#<bar>bd#<CR>

" Instead of <ctrl>-w <ctrl>-j, just do <ctrl>-j {{{1
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

" <Leader>-r to repeate last replacement done {{{1
nmap <Leader>r :spellrepall

" vim: set fdm=marker:
