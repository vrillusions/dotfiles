" bash specific abbreviations
" insert the if root check.
iab <buffer> ifroot if [[ $EUID -ne 0 ]]; then<CR>    echo "Must be run as root"<CR>exit 1<CR><BS>fi
