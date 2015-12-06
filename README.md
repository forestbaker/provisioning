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

TIPS for WINDOWS
FASTER BOOT SPEED & WINDOWS 2000/XP DUAL-BOOT FIX 
Replace the NTLDR & NTDETECT.COM with the XP versions of these files. 
This is a good idea because if you install Windows 2000 as a dual-boot 
with Windows XP then the Windows XP NTLDR & NTDETECT.COM will be 
overwritten with the Windows 2000 versions which will make your 
Windows XP unable to boot. By replacing NTLDR & NTDETECT.COM on the CD
 then when you install Windows 2000 you will get the benefits of the 
updated NTLDR & NTDETECT.COM and also the ability to boot both operating
 systems. (If you do not do this then you will have to replace the files manually after installing Windows 2000) 

good idea
ipconfig /all > C:\IPInfo.txt

random number
%random%

 Silent install (automatic and unattended install) of ie. IE6, Media Player 
or any *.MSI based file 
 A silent, or unattended, installation is one that presents no user interface.
To run an installation silently, use a command like this in a batch file 
MsiExec /I D:\Example.msi /qn

Note: The /q option specifies the "level" of user interface to display, 
and the n specifies that no interface should be displayed.
 Msiexec.exe is located in the system32 folder on Windows 2000 and XP.
 
http://www.3iii.dk/computer/W2Kboot.htm

add/remove control panel hide

SYSOC.INF

To remove Windows Messenger, edit hide out of the line that reads 
msmsgs=msgrocm.dll,OcEntry,msmsgs.inf,hide,7

so that it looks like this:

msmsgs=msgrocm.dll,OcEntry,msmsgs.inf,7
