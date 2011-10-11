" in ubuntu/debian treat anything in /etc/apache2/sites-* as apache config
" files.
au BufNewFile,BufRead /etc/apache2/sites-* setf apache

" Markdown
" src: http://github.com/hallison/vim-markdown
au BufNewFile,BufRead *.{md,mkd,mkdn,mark*} setfiletype markdown

" reStructuredText Documentation Format
" default only grabs *.rst this gets *.rst.txt which is more compatible with
" windows
au BufNewFile,BufRead *.rst.txt setfiletype rst

" text filetype
au BufRead,BufNewFile *.{txt,TXT} setfiletype text
au BufRead,BufNewFile README setfiletype text
