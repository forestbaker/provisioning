cmdow @ /HID
@echo off

IF EXIST D:\CD.txt set CDROM=D:
IF EXIST E:\CD.txt set CDROM=E:
IF EXIST F:\CD.txt set CDROM=F:
IF EXIST G:\CD.txt set CDROM=G:
IF EXIST H:\CD.txt set CDROM=H:
IF EXIST I:\CD.txt set CDROM=I:
IF EXIST J:\CD.txt set CDROM=J:

SET KEY=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx

REG ADD %KEY% /V TITLE /D "Installing Applications" /f

REG ADD %KEY%\001 /VE /D "Preparing Installation..." /f
REG ADD %KEY%\001 /V 1 /D "%CDROM%\apps\prepare.bat" /f
REG ADD %KEY%\005 /VE /D "Installing Adobe PDF Reader 6" /f
REG ADD %KEY%\005 /V 1 /D "%CDROM%\apps\AdobeReader6\AR6.msi /qn" /f
REG ADD %KEY%\010 /VE /D "Installing Windows Media Player 9" /f
REG ADD %KEY%\010 /V 1 /D "%CDROM%\apps\WMP9\MPSetupXP.exe /Q:A /R:N" /f
REG ADD %KEY%\020 /VE /D "Installing WinRAR 3.2" /f
REG ADD %KEY%\020 /V 1 /D "%CDROM%\apps\WinRAR\wrar320.exe /s" /f
REG ADD %KEY%\025 /VE /D "Installing DirectX 9" /f
REG ADD %KEY%\025 /V 1 /D "%CDROM%\apps\DirectX9\dxsetup.exe /opk" /f
REG ADD %KEY%\045 /VE /D "Installing Nero 6.0" /f
REG ADD %KEY%\045 /V 1 /D "%CDROM%\apps\Nero\nero60015.exe /silent /noreboot" /f
REG ADD %KEY%\045 /V 2 /D "REGEDIT /S %CDROM%\apps\Nero\register.reg" /f
REG ADD %KEY%\050 /VE /D "Installing CD Copying Software" /f
REG ADD %KEY%\050 /V 1 /D "%CDROM%\Apps\cddarip/cddarip.msi /QB" /f
REG ADD %KEY%\055 /VE /D "Installing Anti-Spyware" /f
REG ADD %KEY%\055 /V 1 /D "%CDROM%\apps\spybot\spybot.exe /silent" /f
REG ADD %KEY%\060 /VE /D "Cleaning Up Installation..." /f
REG ADD %KEY%\060 /V 1 /D "REGEDIT /S %CDROM%\apps\vipernfo.reg" /f
REG ADD %KEY%\060 /V 2 /D "%CDROM%\apps\cleanup.bat" /f
EXIT
