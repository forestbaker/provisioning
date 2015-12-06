cls
@echo off

ECHO.
ECHO Installing DirectX 9.0b
ECHO Please wait...
start /wait %systemdrive%\apps\DirectX9\dxsetup.exe /opk

ECHO.
ECHO Installing Windows Media Player 9
ECHO Please wait...
start /wait %systemdrive%\apps\WMP9\MPSetupXP.exe /Q:A /R:N
start /wait %systemdrive%\apps\WMP9\WMBonusXP.exe /Q:A /R:N

ECHO.
ECHO Installing Adobe Reader 6
ECHO Please wait...
start /wait %systemdrive%\apps\AdobeReader6\AR6.msi /QB

ECHO.
ECHO Installing Kazza Lite K-plus-plus 2.42
ECHO Please wait...
start /wait %systemdrive%\apps\kazaalite\klitekpp242e.exe /silent

ECHO.
ECHO Installing Nero Burning ROM v6.0.0.15
ECHO Please wait...
start /wait %systemdrive%\apps\Nero\nero60015.exe /silent /noreboot

ECHO.
ECHO Registering Nero Burning ROM...
ECHO Please wait...
start /wait REGEDIT /S %systemdrive%\apps\Nero\register.reg

ECHO.
ECHO Installing Movie Maker 2.0
ECHO Please wait...
start /wait %systemdrive%\apps\movie2\mm20.msi /qn

ECHO.
ECHO Installing WinRAR 3.20
ECHO Please wait...
start /wait %systemdrive%\apps\WinRAR\wrar320.exe /s
RD %systemdrive%\Program Files\WinRAR\winrar.exe
copy %systemdrive%\apps\WinRAR\winrar.exe %systemdrive%\Program Files\WinRAR\

echo.
ECHO Installing WinISO 5.1
ECHO Please wait...
start /wait "%systemdrive%\apps\winiso\winiso.exe /s"

echo.
ECHO Installing .NET Framework v1.1
ECHO Please wait...
start /wait %systemdrive%\apps\NetFramework\netfx.msi /QB

ECHO.
ECHO Installing Q823718 Security Update for Microsoft Data Access Components
start /wait %systemdrive%\apps\Q823718.exe /T:%systemdrive%\apps\tmp /C:"%systemdrive%\apps\tmp\dahotfix.exe /q /n" /Q

; Removes lame bitmaps
start /wait del "%systemroot%\Blue Lace 16.bmp"
start /wait del "%systemroot%\Coffee Bean.bmp"
start /wait del "%systemroot%\FeatherTexture.bmp"
start /wait del "%systemroot%\Gone Fishing.bmp"
start /wait del "%systemroot%\Greenstone.bmp"
start /wait del "%systemroot%\Prairie Wind.bmp"
start /wait del "%systemroot%\Rhododendron.bmp"
start /wait del "%systemroot%\River Sumida.bmp"
start /wait del "%systemroot%\Santa Fe Stucco.bmp"
start /wait del "%systemroot%\Soap Bubbles.bmp"
start /wait del "%systemroot%\Zapotec.bmp"

; Removes lame screensavers
start /wait del "%systemroot%\system32\scrnsave.scr"
start /wait del "%systemroot%\system32\ss3dfo.scr"
start /wait del "%systemroot%\system32\ssflwbox.scr
start /wait del "%systemroot%\system32\ssmarque.scr"
start /wait del "%systemroot%\system32\sstext3d.scr"
start /wait del "%systemroot%\system32\sstars.scr"
start /wait del "%systemroot%\system32\sspipes.scr"
start /wait del "%systemroot%\system32\ssbezier.scr"
start /wait del "%systemroot%\system32\ssmyst.scr"

ECHO.
ECHO Installing Registry Settings
ECHO Please wait...
start /wait REGEDIT /S "%systemdrive%\apps\regtweaks.reg"

ECHO.
ECHO Installing CDex 1.51
ECHO Please wait...
start "%systemdrive%\Apps\CDex\cdex_151.exe /S"

;cleanup apps directory
RD /S/Q c:\apps

;this stops the script
EXIT
