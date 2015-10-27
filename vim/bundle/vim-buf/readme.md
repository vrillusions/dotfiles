`<space>` and `<backspace>` switch buffers, like `:bprevious` and `:bnext`.

`X` deletes the current buffer, like `:bdelete`.

With each of the above, a single-line list of buffers is displayed at the bottom of the screen.  The current buffer is
surrounded with `[]`.  Modified buffers are appended a `+`.  If the list doesn't fit on the screen, the extra parts are
removed and `...` is displayed at the sides.

![Screenshot](https://raw.github.com/ngn/vim-buf/master/screenshot.png)

The line is printed using `:echo` (no `:split`-s are used) and will disappear on the next keystroke.

See also the BufExplorer and MiniBufExplorer plugins.
