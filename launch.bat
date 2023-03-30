@echo off
cls

if "%1" == "" (
    set file=main
) else (
    set file=%1
)

if not exist .\bin\ (
    call :fail .\bin\ is missing
)

if not exist .\bin\luajit.exe (
    call :fail .\bin\luajit.exe is missing
)

if not exist .\src\ (
    call :fail .\src\ is missing
)

if not exist .\src\%file%.lua (
    call :fail .\src\%file%.lua is missing
)

call :run

:run
.\bin\luajit.exe .\src\%file%.lua
goto out

:fail
setlocal
echo %1
goto out
endlocal

:out
pause
cls
exit