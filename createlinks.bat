@ECHO OFF
setlocal
REM This needs to run as administrator
REM make a couple symlinks to dotfiles, mainly just vim configs.
cd %HOMEPATH%
REM The symlink issue appears fixed in v7.4 so just creating normal symlinks.
REM Before this uses the /H option to create hard links but then it's not
REM obvious you're changing a hard-linked file. Plus it didn't work either.
mklink _vimrc "dotfiles\vimrc"
mklink _gvimrc "dotfiles\gvimrc"
REM directory doesn't need a hard link
mklink /D .vim "dotfiles\vim"
echo Additionally you can add firefox's user.js (currently not handled by
echo script as the profile folder is unique)
echo.
echo Example:
echo   cd %APPDATA%\Mozilla\Firefox\Profiles\ohrei0i4.default
echo   mklink user.js %USERPROFILE%\dotfiles\share\firefox\user.js
pause
