" bash specific abbreviations
" insert the if root check.
iab <buffer> ifroot if [[ $EUID -ne 0 ]]; then<CR>    echo "Must be run as root" >&2<CR>exit 1<CR><BS>fi
" get the current date_time for creating backups of files
iab <buffer> datestamp DATE=$(date "+%Y%m%d_%H%M%S")
" insert the if number of arguments check.
iab <buffer> ifargs if [ $# -ne 1 ]; then<CR>    echo "Usage: `basename $0` option"<CR>exit 1<CR><BS>fi

" autowrap comments at 80
setlocal formatoptions+=croq
setlocal textwidth=80
" don't autowrap text though
setlocal formatoptions-=t
