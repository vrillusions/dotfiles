" todotag.vim - format TODO tags with date and owner
"
" This formats a todo line in comments so they have a standard format.
" Inspiration for this came from http://www.approxion.com/?p=39 and pretty
" much emulates that format.
"
" Options:
"   g:todotag_owner - Set to the value for owner part of string. If this
"   is an empty string then the owner part will be omitted. If not specified
"   this will try $USER, $USERNAME, 'ChangeMe'. It's highly recommended you
"   set this as you may be logged in as different users in each system.
"
" Provides:
"   b:todotag_owner_tag - After processing this is the result that will
"   be appended to message. Can be overridden at the buffer level if needed
"
"   GetTodoComment() - Function that returns the current date and owner
"
"   iabbr TODO: - Will print the current date and owner
"
" Installation:
"   - Place this file in ~/.vim/plugins/
"   - Add the following line to your ~/.vimrc
"
"       let g:todotag_owner = 'your_name'
"
" Usage:
"   In insert mode typing something like `# TODO: ` will insert the current
"   date followed by the vale of g:todotag_owner_tag.
"
" Author: Todd Eddy <http://toddeddy.com>
" License: The Unlicense <http://unlicense.org/>
" Version: 0.2.0
"

if exists('g:loaded_todotag') || &cp || v:version < 700
    finish
endif
let g:loaded_todotag = 1

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
"   b:todotag_owner_tag - Will be appended to date. Should either end
"   with a semicolon or be empty if no owner specified.
"
" Example:
"   let b:todotag_owner_tag = 'jdoe:'
"   echo GetTodoComment()
"   >> 2013-08-09:jdoe:
"
"   let b:todotag_owner_tag = ''
"   echo GetTodoComment()
"   >> 2013-08-09:
"
function GetTodoComment ()
    " TODO:2013-10-31:teddy: figure out why sometimes this isn't being set
    " properly. In the meantime this will make sure it is
    if !exists("b:todotag_owner_tag")
        call s:Debug('b:todotag_owner_tag not set')
        call s:SetOwnerTag()
    endif
    return strftime("%Y-%m-%d") . ':' . b:todotag_owner_tag
endfunction


" Sets the owner tag based on global variable and saves to buffer-scope
" variable.
"
" Variables:
"   g:todotag_owner - The owner set by the user in their vimrc. If this
"   doesn't exist it tries to be smart about discovering a good value.
"
" Returns:
"   It sets b:todotag_owner_tag and does the implied return of 1
"
function s:SetOwnerTag ()
    if !exists("g:todotag_owner")
        call s:Debug('g:todotag_owner not set')
        if exists("$USER")
            call s:Debug('$USER exists')
            let b:todotag_owner_tag = $USER . ':'
        elseif exists("$USERNAME")
            call s:Debug('$USERNAME exists')
            let b:todotag_owner_tag = $USERNAME . ':'
        else
            call s:Debug('Cant find anything')
            let b:todotag_owner_tag = 'ChangeMe:'
        endif
    elseif g:todotag_owner == ''
        call s:Debug('g:todotag_owner set to empty string')
        let b:todotag_owner_tag = ''
    else
        call s:Debug('g:todotag_owner is ' . g:todotag_owner)
        let b:todotag_owner_tag = g:todotag_owner . ':'
    endif

    call s:Debug('b:todotag_owner_tag is "' . b:todotag_owner_tag . '"')
endfunction
call s:SetOwnerTag()


" Set the abbreviations
iab TODO: TODO:<c-r>=GetTodoComment()<CR>


" vim: set et ts=4 sw=4 sts=4:
