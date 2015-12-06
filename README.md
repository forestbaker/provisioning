# provisioning
provision server for windows, linux, osx, unix

WINDOWS
Create a directory called $OEM$\$1\hotfixes 
Create sub directories called IE and WIN 
Create sub directories beneath the WIN directory called 1 and 2 

So, here is what you should have 

$OEM$\$1 
HOTFIXES 
WIN 
1 
2 
IE 

There are two different kinds of hotfixes for Windows and one for IE (the reason for the directory structure) One type of hotfix uses -u -q -z switches where as the other kind uses /q:a /r:n switches. Drop the first kind in the 1 directory and the second kind in the 2 directory. If you have trouble determining which is which you can launch it from a prompt with a /? switch to find out. Drop the corresponding IE hotfixes in the IE directory. 

Drop QCHAIN.EXE in the HOTFIXES directory. 
Create a batch file in the HOTFIXES directory called HOTFIXES.BAT with the following contents 

------------------- 
:START 
@ECHO OFF 
DIR /B c:\hotfixes\win\1\>>c:\hotfixes\win1.txt 
DIR /B c:\hotfixes\win\2\>>c:\hotfixes\win2.txt 
DIR /B c:\hotfixes\IE\>>c:\hotfixes\ie.txt 

FOR /f %%i IN (c:\hotfixes\win1.txt) DO ECHO %%i -u -q -z>>hotfixrun.bat 
FOR /f %%i IN (c:\hotfixes\win2.txt) DO ECHO %%i /q:a /r:n>>hotfixrun.bat 
FOR /f %%i IN (c:\hotfixes\ie.txt) DO ECHO %%i /q:a /r:n>>hotfixrun.bat 
ECHO qchain.exe>>hotfixrun.bat 

hotfixrun.bat 

RD /S/Q c:\hotfixes 

:END 
------------------- 
