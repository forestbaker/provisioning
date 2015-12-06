cmdow @ /HID
@echo off

IF EXIST D:\CD.txt set CDROM=D:
IF EXIST E:\CD.txt set CDROM=E:
IF EXIST F:\CD.txt set CDROM=F:
IF EXIST G:\CD.txt set CDROM=G:
IF EXIST H:\CD.txt set CDROM=H:
IF EXIST I:\CD.txt set CDROM=I:
IF EXIST J:\CD.txt set CDROM=J:

DEL "%systemdrive%\Program Files\WinRAR\winrar.exe"
copy "%CDROM%\apps\WinRAR\winrar.exe" "%systemdrive%\Program Files\WinRAR"

shutdown -r -f -t 0

EXIT
