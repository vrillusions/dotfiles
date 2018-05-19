@ECHO OFF
REM createlinks.cmd - make a couple symlinks to dotfiles
setlocal EnableExtensions EnableDelayedExpansion
set script_dir=%~dp0

pushd "%HOMEPATH%"
@ECHO ON
mklink _vimrc "%script_dir%vimrc"
mklink _gvimrc "%script_dir%gvimrc"
mklink /D .vim "%script_dir%vim"
@ECHO OFF
popd
REM ---
REM apparently Firefox in windows 10 can see symlinks now
REM
REM echo Additionally you can add firefox's user.js (currently not handled by
REM echo script as the profile folder is unique). Note I had to use /H to make
REM echo it a hard link for firefox to pick it up.
REM echo.
REM echo Example:
REM echo   cd /D %APPDATA%\Mozilla\Firefox\Profiles\*.default
REM echo   mklink /H user.js %USERPROFILE%\dotfiles\share\firefox\user.js
REM ---
echo.
echo Attempting to symlink Firefox user.js to default profile.
echo If you get an error here view script for commands to run.
echo.

REM This assumes that there's a single profile that ends with ".default"
pushd "%APPDATA%\Mozilla\Firefox\Profiles\*.default" || goto _error
mklink user.js "%script_dir%share\firefox\user.js"
popd

echo.
echo Finished successfully
pause
goto :EOF

:_error
echo.
echo An error has occurred. Check the output above as the error will typically
echo be right before this message.
echo.
pause
exit /B
