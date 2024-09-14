@echo off & chcp 65001 >nul
setlocal enabledelayedexpansion

REM 還原到預設的 MAC 位址
echo 正在還原到預設的 MAC 位址...
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\0001" /v "NetworkAddress" /f

echo 已還原預設 MAC 位址。
echo 請重新啟動電腦以套用變更。
pause
