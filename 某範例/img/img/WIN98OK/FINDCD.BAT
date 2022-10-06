LH MSCDEX.EXE /D:mscd000
LH SMARTDRV.EXE 4096
LH DOSKEY.COM > NUL
LH MOUSE.COM > NUL
set cdrom=
findcd -e
if errorlevel 255 goto _err
if errorlevel 0 set cdrom=A
if errorlevel 1 set cdrom=B
if errorlevel 2 set cdrom=C
if errorlevel 3 set cdrom=D
if errorlevel 4 set cdrom=E
if errorlevel 5 set cdrom=F
if errorlevel 6 set cdrom=G
if errorlevel 7 set cdrom=H
if errorlevel 8 set cdrom=I
if errorlevel 9 set cdrom=J
if errorlevel 10 set cdrom=K
if errorlevel 11 set cdrom=L
if errorlevel 12 set cdrom=M
if errorlevel 13 set cdrom=N
if errorlevel 14 set cdrom=O
if errorlevel 15 set cdrom=P
if errorlevel 16 set cdrom=Q
if errorlevel 17 set cdrom=R
if errorlevel 18 set cdrom=S
if errorlevel 19 set cdrom=T
if errorlevel 20 set cdrom=U
if errorlevel 21 set cdrom=V
if errorlevel 22 set cdrom=W
if errorlevel 23 set cdrom=X
if errorlevel 24 set cdrom=Y
if errorlevel 25 set cdrom=Z
path=%cdrom%:\;%cdrom%:\ucdos;
%cdrom%:
goto _end
:_err
echo.
echo There was an error...
:_end
