@echo off
GOTO %CONFIG%

:ALLCD
:IDECDM

PROMPT $P$G
PATH A:\;C:\
set temp=c:\
set tmp=c:\

SET EXPAND=YES
SET DIRCMD=/O:N
set LglDrv=27 * 26 Z 25 Y 24 X 23 W 22 V 21 U 20 T 19 S 18 R 17 Q 16 P 15
set LglDrv=%LglDrv% O 14 N 13 M 12 L 11 K 10 J 9 I 8 H 7 G 6 F 5 E 4 D 3 C
call setramd.bat %LglDrv%
path=C:\;%RAMD%:\;%RAMD%:\BAT;%CDROM%:\;%CDROM%:\UCDOS;%CDROM%:\BOOT;
copy get.exe %RAMD%:\ > NUL
copy attrib.exe %RAMD%:\ > NUL
copy command.com %RAMD%:\ > NUL
copy edit.com %RAMD%:\ > NUL
copy format.com %RAMD%:\ > NUL
copy fdisk.exe %RAMD%:\ > NUL
copy deltree.exe %RAMD%:\ > NUL
copy restart.com %RAMD%:\ > NUL
copy readme.exe %RAMD%:\ > NUL
copy ramexec.bat %RAMD%:\ > NUL
copy xxcopy.exe %RAMD%:\ > NUL
rem copy extract.exe %RAMD%:\ > NUL
set comspec=%RAMD%:\command.com
LH MSCDEX.EXE /D:MSCD001 /L:%CDROM%
LH SMARTDRV.EXE 4096
LH DOSKEY.COM > NUL
LH MOUSE.COM > NUL
Set LglDrv=

MD %RAMD%:\TEMP
rem extract /y /e /l %RAMD%: ebd.cab > NUL
XXCOPY /E /H %CDROM%:\BOOT\EBD %RAMD%:\ > NUL
%RAMD%:
ramexec.bat

GOTO QUIT


:IDECD
path=C:\;%RAMD%:\;%RAMD%:\BAT;%CDROM%:\;%CDROM%:\UCDOS;%CDROM%:\BOOT;
MSCDEX /D:MSCD001
GOTO QUIT


:NOCD
:QUIT


