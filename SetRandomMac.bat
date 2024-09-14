@echo off & chcp 65001 >nul
setlocal enabledelayedexpansion

REM 生成隨機的 MAC 位址
set "mac="
for /L %%i in (1,1,6) do (
    set /a "r=!random! %% 256"
    call :DecToHex !r!
    set "mac=!mac!!hex!"
    if not %%i==6 set "mac=!mac!-"
)

echo 隨機生成的 MAC 位址: !mac!

REM 設定 MAC 位址到註冊表
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "NetworkAddress" /t REG_SZ /d !mac! /f

echo MAC 位址已設定為: !mac!
echo 請重新啟動電腦以套用變更。

pause
exit /b

:DecToHex
set /a "dec=%1"
set "hex="
set "chars=0123456789ABCDEF"
for /L %%i in (1,1,2) do (
    set /a "d=!dec! & 15"
    for %%j in (!d!) do set "hex=!chars:~%%j,1!!hex!"
    set /a "dec>>=4"
)
exit /b