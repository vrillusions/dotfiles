" mappings.vim - various custom mappings

" when holding the alt key want to go up and down a line as I visual see it
" instead of going up and down actual lines (such as if a line wraps)
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gji

" toggle paste mode
nmap <Leader>p :set invpaste paste?<CR>
" toggle list characters (TODO: roll this into a TogglePaste function)
nmap <Leader>l :set list! list?<CR>

" Use <Leader><Space> to clear highlighting
nmap <Leader><Space> :nohlsearch<CR>

" If I forgot to sudo vi a file, use :w!! and it will run sudo, prompting for
" password
cmap w!! %!sudo tee > /dev/null %

" Underline the current line with =, -, or \~
" src: https://github.com/derekwyatt/vim-config
nmap <silent> <leader>u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> <leader>u- :t.\|s/./-/g\|:nohls<cr>
nmap <silent> <leader>u~ :t.\|s/./\\~/g\|:nohls<cr>

" Close current file but keep split
nmap <Leader>x :b#<bar>bd#<CR>

" Instead of <ctrl>-w <ctrl>-j, just do <ctrl-j
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
