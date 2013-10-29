" todo_comment.vim
"
" This formats a todo line in comments so they have a standard format.
" Inspiration for this came from http://www.approxion.com/?p=39 and pretty
" much emulates that format. This also defines a note line as I use note and
" todo for two different meanings. Note is just something to consider while
" todo is an action item.
"
" Options:
"   g:todo_comment_owner - Set to the value for owner part of string. If this
"   is an empty string then the owner part will be omitted. If not specified
"   this will try $USER, $USERNAME, 'ChangeMe'. It's highly recommended you
"   set this as you may be logged in as different users in each system.
"
" Provides:
"   b:todo_comment_owner_tag - After processing this is the result that will
"   be appended to message. Can be overridden at the buffer level if needed
"   GetTodoComment() - Function that returns the current date and owner
"   iabbr TODO: - Will print the current date and owner
"   iabbr NOTE: - Will print the current date and owner
"
" Installation:
"   - Place this file in ~/.vim/plugins/
"   - Add the following line to your ~/.vimrc
"
"       let g:todo_comment_owner = 'your_name'
"
"   - Any time you type `TODO: ` or `NOTE: ` it will expand that to include
"     the date and value of g:todo_comment_owner
"
" Version: 0.1.0
"
" Changelog:
"   0.1.0
"     - Initial release
"
" Copyright: 2013, Todd Eddy <http://github.com/vrillusions>
" License: The Unlicense: http://unlicense.org/
"


" Uncomment this to echo debug lines. Used by s:Debug()
"let s:do_debug = 'true'

" Will echo the given message if s:do_debug exists
"
" Variables:
"   s:do_debug - Checks if this variable is set. If it doesn't exist nothing
"   is echoed.
"
" Example:
"   call s:Debug('test')
"   >> filename.vim: test
"
function! s:Debug (msg)
    if exists("s:do_debug")
        echom @% . ': ' . a:msg
    endif
endfunction


" Returns a concatenation of timestamp and owner.
"
" Variables:
"   b:todo_comment_owner_tag - Will be appended to date. Should either end
"   with a semicolon or be empty if no owner specified.
"
" Example:
"   let b:todo_comment_owner_tag = 'jdoe:'
"   echo GetTodoComment()
"   >> 2013-08-09:jdoe:
"
"   let b:todo_comment_owner_tag = ''
"   echo GetTodoComment()
"   >> 2013-08-09:
"
function! GetTodoComment ()
    return strftime("%F") . ':' . b:todo_comment_owner_tag
endfunction


" Set the owner tag based on global variable
if !exists("g:todo_comment_owner")
    call s:Debug('g:todo_comment_owner not set')
    if exists("$USER")
        call s:Debug('$USER exists')
        let b:todo_comment_owner_tag = $USER . ':'
    elseif exists("$USERNAME")
        call s:Debug('$USERNAME exists')
        let b:todo_comment_owner_tag = $USERNAME . ':'
    else
        call s:Debug('Cant find anything')
        let b:todo_comment_owner_tag = 'ChangeMe:'
    endif
elseif g:todo_comment_owner == ''
    call s:Debug('g:todo_comment_owner set to empty string')
    let b:todo_comment_owner_tag = ''
else
    call s:Debug('g:todo_comment_owner is ' . g:todo_comment_owner)
    let b:todo_comment_owner_tag = g:todo_comment_owner . ':'
endif

call s:Debug('b:todo_comment_owner_tag is "' . b:todo_comment_owner_tag . '"')


" Set the abbreviations
iab TODO: TODO:<c-r>=GetTodoComment()<CR>
iab NOTE: NOTE:<c-r>=GetTodoComment()<CR>


" vim: set et ts=4 sw=4 sts=4:
