set DIR=S:\ITInfo\
set SUBFILENAME=%ComputerName%_ITInfo.txt

if exist "%DIR%%SUBFILENAME%" exit

whoami >> %DIR%%SUBFILENAME%
systeminfo | find "System Boot Time:" >> %DIR%%SUBFILENAME%
echo. >> %DIR%%SUBFILENAME%
echo Computer Name: %ComputerName% >> %DIR%%SUBFILENAME%
echo.   >> %DIR%%SUBFILENAME%.
ipconfig | findstr IPv4 >> %DIR%%SUBFILENAME%
ipconfig | findstr IPv6 >> %DIR%%SUBFILENAME%
echo. >> %DIR%%SUBFILENAME%

if exist "C:\Program Files\Microsoft Office\Office16\" cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%
if exist "C:\Program Files\Microsoft Office\Office15\" cscript "C:\Program Files\Microsoft Office\Office15\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%
if exist "C:\Program Files\Microsoft Office\Office14\" cscript "C:\Program Files\Microsoft Office\Office14\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%
if exist "C:\Program Files\Microsoft Office\Office12\" cscript "C:\Program Files\Microsoft Office\Office12\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%
if exist "C:\Program Files\Microsoft Office\Office11\" cscript "C:\Program Files\Microsoft Office\Office11\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%

if exist "C:\Program Files (x86)\Microsoft Office\Office16\" cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%
if exist "C:\Program Files (x86)\Microsoft Office\Office15\" cscript "C:\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%
if exist "C:\Program Files (x86)\Microsoft Office\Office14\" cscript "C:\Program Files (x86)\Microsoft Office\Office14\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%
if exist "C:\Program Files (x86)\Microsoft Office\Office12\" cscript "C:\Program Files (x86)\Microsoft Office\Office12\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%
if exist "C:\Program Files (x86)\Microsoft Office\Office11\" cscript "C:\Program Files (x86)\Microsoft Office\Office11\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAME%


pause
