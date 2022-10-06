IF NOT EXIST %CDROM%:\DISKEMU.BIN GOTO MENUSTAR
copy a:\demumgr.com > nul
demumgr /u > nul
del %RAMD%:\demumgr.com
GOTO MENUSTAR

:MENUSTAR
CALL MENU.BAT
GOTO END

:END