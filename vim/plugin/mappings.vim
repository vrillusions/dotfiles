" mappings.vim - various custom mappings

" when holding the alt key want to go up and down a line as I visual see it
" instead of going up and down actual lines (such as if a line wraps)
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gji

" More mappings
" go into "paste" mode and disable list chars (can be used for copy as well)
nmap <Leader>p :set paste<CR>:set nolist<CR>

" Use (with default leader) \q to clear highlighting
nmap <Leader>q :nohlsearch<CR>

" If I forgot to sudo vi a file, use :w!! and it will run sudo, prompting for
" password
cmap w!! %!sudo tee > /dev/null %

" Underline the current line with =, -, or \~
" src: https://github.com/derekwyatt/vim-config
nmap <silent> <leader>u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> <leader>u- :t.\|s/./-/g\|:nohls<cr>
nmap <silent> <leader>u~ :t.\|s/./\\~/g\|:nohls<cr>
