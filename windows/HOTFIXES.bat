:START 
@ECHO OFF 
DIR /B c:\hotfixes\win\1\>>c:\hotfixes\win1.txt 
DIR /B c:\hotfixes\win\2\>>c:\hotfixes\win2.txt 
DIR /B c:\hotfixes\IE\>>c:\hotfixes\ie.txt 

FOR /f %%i IN (c:\hotfixes\win1.txt) DO ECHO start /wait c:\hotfixes\win\1\%%i -u -q -z>>hotfixrun.bat 
FOR /f %%i IN (c:\hotfixes\win2.txt) DO ECHO start /wait c:\hotfixes\win\2\%%i /q:a /r:n>>hotfixrun.bat 
FOR /f %%i IN (c:\hotfixes\ie.txt) DO ECHO start /wait c:\hotfixes\IE\%%i /q:a /r:n>>hotfixrun.bat

ECHO qchain.exe>>hotfixrun.bat 
echo RD /S/Q c:\hotfixes>>hotfixrun.bat

:END
