@echo off

color 1F
:login
    cls
    echo [================================================]
    echo                    LOGIN USER
    echo [================================================]
    echo.
    echo ..................................................
    set /p name="User       : "
    set /p password="Password   : "
    if %password% == mursalim (
        goto begin
    ) else (
        echo Password Salah
        set /p x= enter.....!!!
        goto login
    )

:begin
    cls
    echo [=================================================]
    echo                  HALAMAN UTAMA
    echo [=================================================]
    echo.
    echo    [1] Menu Setting
    echo    [2] Menu Restaurant
    echo    [3] Exit
    echo ...................................................

    set /p pil="Pilihan Anda : "

    if %pil%==1 goto setting
    if %pil%==2 goto restaurant
    if %pil%==3 exit

:setting
    cls
    echo [===================================================]
    echo                SETTING COMPUTER
    echo [===================================================]
    echo  [1] Setting Keyboard
    echo  [2] Setting Language
    echo  [3] Setting Date
    echo  [4] Add User
    echo  [5] Sound Control
    echo  [6] Open Startup
    echo  [7] Chrome
    echo  [88] Kembali     [0] Keluar
    echo [===================================================]
    echo.
    set /p "pilihanmenu=Masukan Pilihan Kamu : "
    if %pilihanmenu%==1 goto Keyboard
    if %pilihanmenu%==2 goto Language
    if %pilihanmenu%==3 goto Date
    if %pilihanmenu%==4 goto User
    if %pilihanmenu%==5 goto Sound
    if %pilihanmenu%==6 goto Startup
    if %pilihanmenu%==7 goto Chrome
    if %pilihanmenu%==88 goto Back
    if %pilihanmenu%==0 goto Exit

    :Keyboard
    cls
    start control keyboard
    goto setting
    pause

    :Language
    cls
    start intl.cpl
    goto setting
    pause

    :Date
    cls
    start timedate.cpl
    goto setting
    pause

    :User
    cls
    start Netplwiz.exe
    goto setting
    pause

    :Sound
    cls
    start SndVol.exe
    goto setting
    pause

    :Startup
    cls
    start msconfig
    goto setting
    pause

    :Chrome
    cls
    "C:\Program Files\Google\Chrome\Application\chrome.exe"
    goto setting
    pause

    :Back
    goto begin

    :Exit
    exit

:restaurant
    cls
    echo [=================================================]
    echo        SELAMAT DATANG DI RESTO SERBA LARANG
    echo [=================================================]
    echo    Menu Makanan : 
    echo    [1] Paket 1(ayam+es teh)
    echo    [2] Paket 2(ayam bakar + teh anget)
    echo    [3] Paket 3(ayam goreng krispy)
    echo    [4] Paket Premium(gurame + cumi)
    echo    [5] Paket Gold(gurame + seafood)
    echo    [88] Kembali     [0] Keluar
    echo [==================================================]
    set /p pilihan="Pilihan Anda : "

    if %pilihan%==1 goto 1
    if %pilihan%==2 goto 2
    if %pilihan%==3 goto 3
    if %pilihan%==4 goto 4
    if %pilihan%==5 goto 5
    if %pilihan%==88 goto back
    if %pilihan%==0 exit

:1
    cls
    echo [==================================================]
    echo  Nama Paket = paket 1(ayam + es teh)
    echo  Harga = 50.000
    echo  Keuntungan = nasi+air putih+kurma
    echo [==================================================]
    pause
    goto restaurant

:2
    cls
    echo [==================================================]
    echo  Nama Paket = paket 2(ayam bakar + teh anget)
    echo  Harga = 75.000
    echo  Keuntungan = nasi+air putih+kurma
    echo [==================================================]
    pause
    goto restaurant

:3
    cls
    echo [==================================================]
    echo  Nama Paket = paket 3(ayam goreng krispy)
    echo  Harga = 80.000
    echo  Keuntungan = nasi+air putih+kurma
    echo [==================================================]
    pause
    goto restaurant

:4
    cls
    echo [==================================================]
    echo  Nama Paket = paket premium(gurame + cumi)
    echo  Harga = 125.000
    echo  Keuntungan = nasi+air putih+kurma
    echo [==================================================]
    pause
    goto restaurant

:5
    cls
    echo [==================================================]
    echo  Nama Paket = paket gold(gurame + seafood)
    echo  Harga = 250.000
    echo  Keuntungan = nasi+air putih+kurma
    echo [==================================================]
    pause
    goto restaurant

:back
    goto begin

pause
exit