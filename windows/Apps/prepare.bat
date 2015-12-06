cmdow @ /HID
@echo off
:: removes lame .bmps in /windows
DEL "%systemroot%\*.bmp"
:: removes lame screensavers

del "%systemroot%\system32\scrnsave.scr"
del "%systemroot%\system32\ss3dfo.scr"
del "%systemroot%\system32\ssflwbox.scr
del "%systemroot%\system32\ssmarque.scr"
del "%systemroot%\system32\sstext3d.scr"
del "%systemroot%\system32\ssstars.scr"
del "%systemroot%\system32\sspipes.scr"
del "%systemroot%\system32\ssbezier.scr"
del "%systemroot%\system32\ssmyst.scr"
:: removes start menu items

DEL "%AllUsersProfile%\Start Menu\Set Program Access and Defaults.lnk"
DEL "%AllUsersProfile%\Start Menu\Windows Catalog.lnk"
DEL "%AllUsersProfile%\Start Menu\Programs\Remote Assistance.lnk"
DEL "%AllUsersProfile%\Start Menu\Programs\Adobe Reader 6.0.lnk"
RD /S /Q "%AllUsersProfile%\Start Menu\Programs\PrintMe Internet Printing"

:: 

DEL "C:\Documents and Settings\Default User\Start Menu\Programs\Remote Assistance.lnk"
DEL "C:\Documents and Settings\Default User\Start Menu\Set Program Access and Defaults.lnk"
DEL "C:\Documents and Settings\Default User\Start Menu\Windows Catalog.lnk"
DEL "C:\Documents and Settings\Default User\Start Menu\Programs\Adobe Reader 6.0.lnk"

:: 

DEL "C:\Documents and Settings\Administrator\Start Menu\Programs\Remote Assistance.lnk"
DEL "C:\Documents and Settings\Administrator\Start Menu\Programs\Adobe Reader 6.0.lnk"
DEL "C:\Documents and Settings\Administrator\Start Menu\Windows Catalog.lnk"
DEL "C:\Documents and Settings\Administrator\Start Menu\Set Program Access and Defaults.lnk"

EXIT
