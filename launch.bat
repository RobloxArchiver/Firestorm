@echo off

if not exist .\bin\ (
    call :fail .\bin\ is missing
)

if not exist .\bin\luajit.exe (
    call :fail .\bin\luajit.exe is missing
)

if not exist .\src\ (
    call :fail .\src\ is missing
)

if not exist .\src\main.lua (
    call :fail .\src\main.lua is missing
)

call :run

:run
.\bin\luajit.exe .\src\main.lua
goto out

:fail
setlocal
echo %1
goto out
endlocal

:out
pause
exit