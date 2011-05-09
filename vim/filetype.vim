" in ubuntu/debian treat anything in /etc/apache2/sites-* as apache config
" files.
au BufNewFile,BufRead /etc/apache2/sites-* setf apache

