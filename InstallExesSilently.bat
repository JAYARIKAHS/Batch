:: installs executables in folder and subfolders

cd /d %~dp0

for /r "." %%a in (*.exe) do "%%~fa" -s

echo done
