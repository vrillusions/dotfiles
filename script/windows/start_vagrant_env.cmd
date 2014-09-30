@ECHO OFF
REM start_vagrant_environment - Set environment variables needed for vagrant
REM
REM This is meant to be used by console2 to create a vagrant tab. For the most
REM part it just sets some environment variables that is needed to ssh in to
REM vagrant box after it has been started
REM
REM intentionally don't have setlocal here

set CYGWIN=nodosfilewarning
set vagrant_boxes="D:\vagrant-boxes"
set ssh_path=C:\cygwin\bin
set PATH=%PATH%;%ssh_path%

cd /D %vagrant_boxes%
