@echo off
title script pembuat folder
echo ****************latihan buat script folder**********
echo.
color 02

:menu
set /p input="ketikkan nama file: " 
set /p ekstensi="ketikkan file ekstensinya : "
:: md bisa outputkan variabel
pause>anda yakin mau mengganti file ?
echo >  %input%.%ekstensi%
:print
echo %input%.%ekstensi% sudah terbuat

set /p rename="anda mau merename file ini (Y/N)"
if "%rename%" EQU "Y" (
  goto:rename
) else (
  goto:print
)
:rename
setlocal enabledelayedexpansion
set /p rename="ketikkkan nama file baru : "
set /p eksname="ekstensi file : "
pause> tekan enter
REN "!input!.!ekstensi!" "!rename!.!eksname!"
echo rename file berhasil
set /p ulang="ulang Y/N"
pause
goto:menu
pause>nul