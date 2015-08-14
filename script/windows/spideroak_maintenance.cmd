@ECHO OFF
REM spideroak_maintenance - clean up old and deleted files
REM
REM Commands are accurate as of version 5.1.2
setlocal EnableExtensions EnableDelayedExpansion
set title=%~nx0
title %title%
set spider_cmd="C:\Program Files\SpiderOakONE\SpiderOakONE.exe"

ECHO Make sure SpiderOak application is closed before continuing
pause

ECHO Current selection
%spider_cmd% --selection
ECHO.

ECHO Purging historical versions
%spider_cmd% --purge-historical-versions --verbose
ECHO.

ECHO Purge deleted items older than 30 days
%spider_cmd% --purge-deleted-items=30 --verbose
ECHO.

ECHO Done. You may start the application again.
pause
