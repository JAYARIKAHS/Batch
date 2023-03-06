Set "OldString1=1  All"  
Set "NewString1=FB All"  

@ECHO OFF &SETLOCAL
cd /d . 
for %%x in (*.dat) do call:process "%%~x"
goto:eof

:process 
set "outFile=%~n1_dj%~x1"  
(for /f "skip=2 delims=" %%a in ('find /n /v "" "%~1"') do (  
    set "ln=%%a"  
    Setlocal enableDelayedExpansion  
    set "ln=!ln:*]=!"  
    if defined ln (
        set "ln=!ln:%OldString1%=%NewString1%!"  
    )
    echo(!ln!  
    endlocal  
))>"%outFile%"
exit /b
