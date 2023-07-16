@echo off
color 1f

:begin
    cls
    echo Menu Program
    echo 1. Hello
    echo 2. System Info
    echo 3. Exit
    echo.
    
    set /p pilihan="Pilihan Anda : "

    if %pilihan%==1 goto 1
    if %pilihan%==2 goto 2
    if %pilihan%==3 exit

:1
    cls
    echo [===================================]
    echo    SELAMAT DATANG DI HALAMAN UTAMA
    echo [===================================]
    echo    Hi, Selamat Pagi
    pause
    goto begin

:2
    cls
    systeminfo
    pause
    goto begin


pause
exit