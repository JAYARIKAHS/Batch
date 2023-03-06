@echo off
:: set folder path
set folders=E:\Temp

:: set min age of files and folders to delete
set maxdays=45

:: remove files from folder
forfiles -p %folders% -m *.* -d -%maxdays% -c "cmd  /c del /q @path"

:: remove sub directories from folder
forfiles -p %folders% -d -%maxdays% -c "cmd /c IF @isdir == TRUE rd /S /Q @path"
