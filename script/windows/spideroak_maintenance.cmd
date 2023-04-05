@ECHO OFF
REM spideroak_maintenance - clean up old and deleted files
REM
REM Commands are accurate as of version 5.1.2
setlocal EnableExtensions EnableDelayedExpansion
set title=%~nx0
title %title%


REM -- options --
REM historical version purging, see below for syntax
set purge_historical_versions="h24,d31,w52"
REM set purge_historical_versions="all"
REM number of days to purge deleted items
set purge_deleted_items=30


set spider_cmd="C:\Program Files\SpiderOakONE\SpiderOakONE.exe"

ECHO Make sure SpiderOak application is closed before continuing
pause

ECHO Current selection
%spider_cmd% --selection
ECHO.

REM ECHO You can use the % spider_cmd % variable to run the command
REM cmd

ECHO Purging historical versions - %purge_historical_versions%
REM default is "h24,d31,w" which never removes weekly ones.
REM this is modified to purge weekly ones after 52 weeks
REM %spider_cmd% --purge-historical-versions "h24,d31,w52" --verbose
%spider_cmd% --purge-historical-versions %purge_historical_versions% --verbose
ECHO.

ECHO Purge deleted items older than %purge_deleted_items% days
%spider_cmd% --purge-deleted-items=%purge_deleted_items% --verbose
ECHO.

ECHO Done. You may start the application again.
pause
