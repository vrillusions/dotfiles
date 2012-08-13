" bash specific abbreviations
" insert the if root check.
iab <buffer> ifroot if [[ $EUID -ne 0 ]]; then<CR>    echo "Must be run as root"<CR>exit 1<CR><BS>fi
" get the current date_time for creating backups of files
iab <buffer> datestamp DATE=$(date "+%Y%m%d_%H%M%S")
