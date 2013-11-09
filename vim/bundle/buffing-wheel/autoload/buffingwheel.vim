function buffingwheel#cmd(c)
  if &modified && !&hidden
    if confirm('This buffer has been modified.  Save?', "Yes\nNo") == 1
      update
      redraw
    else
      redraw
      echohl ErrorMsg | echo 'Aborted.' | echohl None
      return
    endif
  endif

  exec 'silent ' . a:c

  " Echo a one-line summary of where the current buffer is among other buffers
  let names = [] " short names of buffers
  let curIndex = -1 " where is the current buffer in the list of ``names''
  let curBufNr = bufnr('%')
  let lastBufNr = bufnr('$')
  let i = 1
  while i <= lastBufNr
    if bufexists(i) && buflisted(i)
      if i == curBufNr
        let curIndex = len(names)
      endif

      let name = fnamemodify(bufname(i), ':t')
      if empty(name)
        let name = '*'
      endif
      if getbufvar(i, '&modified')
        let name .= '+'
      endif

      call add(names, name)
    endif
    let i += 1
  endwhile

  let sLabel = 'Buffers: '
  let sLeft = (curIndex == 0) ? '' : (join(names[:(curIndex - 1)], ' ') . ' ')
  let sMid = '[' . names[curIndex] . ']'
  let sRight = (curIndex == len(names) - 1) ? '' : (' ' . join(names[(curIndex + 1):]))

  let limit = &columns - 12 - len(sLabel) - len(sMid)
  if len(sLeft) + len(sRight) > limit
    if len(sRight) < limit / 2
      let sLeft = '...' . sLeft[-(limit - len(sRight) - 3):]
    elseif len(sLeft) < limit / 2
      let sRight = sRight[:(limit - len(sLeft) - 4)] . '...'
    else
      let sLeft = '...' . sLeft[-((limit / 2) - 3):]
      let sRight = sRight[:((limit / 2) - 4)] . '...'
    endif
  endif
  echohl MoreMsg | echo sLabel . sLeft . sMid . sRight | echohl None
endfunction
