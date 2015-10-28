com! BufNext cal buf#cmd('bn')
com! BufPrev cal buf#cmd('bp')
com! BufDel  cal buf#cmd('bd')

if !exists('g:BufSkipMappings')
  no<silent> <space> :<c-u>BufNext<cr>
  no<silent> <bs>    :<c-u>BufPrev<cr>
  no<silent> X       :<c-u>BufDel<cr>
en
