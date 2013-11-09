# VIM Buffing Wheel

`H` and `L` change buffers, like `:bprevious` and `:bnext`.

`X` deletes the current buffer, like `:bdelete`

After each of the above, the list of buffers is displayed at the bottom of the
screen.  The current buffer is surrounded with `[]`.  Modified buffers are
appended a `+`.

![Screenshot](https://raw.github.com/ngn/vim-buffing-wheel/master/screenshot.png)

Note that no splits are created and the action is performed before showing the
list of buffers.  I find this more usable than the approach taken by the
popular BufExplorer and MiniBufExplorer plugins.
