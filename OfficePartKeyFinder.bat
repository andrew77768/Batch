if exist "C:\Program Files\Microsoft Office\Office16\" cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files\Microsoft Office\Office15\" cscript "C:\Program Files\Microsoft Office\Office15\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files (x86)\Microsoft Office\Office16\" cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files (x86)\Microsoft Office\Office15\" cscript "C:\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS" /dstatus >> C:\Office.txt
:exit
