@ECHO OFF
REM This needs to run as administrator
REM make a couple symlinks to dotfiles
cd %HOMEPATH%
mklink /H _vimrc "dotfiles\vimrc"
mklink /H _gvimrc "dotfiles\gvimrc"
REM directory doesn't need a hard link
mklink /D .vim "dotfiles\vim"
pause
