REM Change this to change the save location of the file
set DIR=S:\ITInfo\
REM Change this to change the file name
set SUBFILENAMETEMP=%ComputerName%_ITInfo_Temp.txt
set SUBFILENAME=%ComputerName%_ITInfo.txt

REM Don't touch below
if exist "%DIR%%SUBFILENAME%" exit
if exist "%DIR%%SUBFILENAMETEMP%" del "%DIR%%SUBFILENAMETEMP%"

whoami /all >> %DIR%%SUBFILENAMETEMP%
REM systeminfo | find "System Boot Time:" >> %DIR%%SUBFILENAMETEMP%
echo. >> %DIR%%SUBFILENAMETEMP%
echo Computer Name: %ComputerName% >> %DIR%%SUBFILENAMETEMP%
echo.   >> %DIR%%SUBFILENAMETEMP%.
ipconfig | findstr IPv4 >> %DIR%%SUBFILENAMETEMP%
ipconfig | findstr IPv6 >> %DIR%%SUBFILENAMETEMP%
echo. >> %DIR%%SUBFILENAMETEMP%
wmic bios get name,serialnumber,version /value | more >> %DIR%%SUBFILENAMETEMP% 
wmic csproduct get name,identifyingnumber,uuid /value | more >> %DIR%%SUBFILENAMETEMP% 
wmic cpu get name,CurrentClockSpeed,MaxClockSpeed /value | more >> %DIR%%SUBFILENAMETEMP% 
echo.   >> %DIR%%SUBFILENAMETEMP%.

if exist "C:\Program Files\Microsoft Office\Office16\" cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files\Microsoft Office\Office15\" cscript "C:\Program Files\Microsoft Office\Office15\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files\Microsoft Office\Office14\" cscript "C:\Program Files\Microsoft Office\Office14\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files\Microsoft Office\Office12\" cscript "C:\Program Files\Microsoft Office\Office12\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files\Microsoft Office\Office11\" cscript "C:\Program Files\Microsoft Office\Office11\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files (x86)\Microsoft Office\Office16\" cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files (x86)\Microsoft Office\Office15\" cscript "C:\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files (x86)\Microsoft Office\Office14\" cscript "C:\Program Files (x86)\Microsoft Office\Office14\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files (x86)\Microsoft Office\Office12\" cscript "C:\Program Files (x86)\Microsoft Office\Office12\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%
if exist "C:\Program Files (x86)\Microsoft Office\Office11\" cscript "C:\Program Files (x86)\Microsoft Office\Office11\OSPP.VBS" /dstatus  | findstr /C:"Last" /C:"LICENSE NAME"  >> %DIR%%SUBFILENAMETEMP%

findstr /v /r /c:"^$" /c:"^[\ \	]*$" "%DIR%%SUBFILENAMETEMP%" >> "%DIR%%SUBFILENAME%"

del "%DIR%%SUBFILENAMETEMP%"
