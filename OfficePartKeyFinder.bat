if exist "C:\Program Files\Microsoft Office\Office16\" cscript "C:\Program Files\Microsoft Office\Office16\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files\Microsoft Office\Office15\" cscript "C:\Program Files\Microsoft Office\Office15\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files\Microsoft Office\Office14\" cscript "C:\Program Files\Microsoft Office\Office14\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files\Microsoft Office\Office12\" cscript "C:\Program Files\Microsoft Office\Office12\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files\Microsoft Office\Office11\" cscript "C:\Program Files\Microsoft Office\Office11\OSPP.VBS" /dstatus >> C:\Office.txt

if exist "C:\Program Files (x86)\Microsoft Office\Office16\" cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files (x86)\Microsoft Office\Office15\" cscript "C:\Program Files (x86)\Microsoft Office\Office15\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files (x86)\Microsoft Office\Office14\" cscript "C:\Program Files (x86)\Microsoft Office\Office14\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files (x86)\Microsoft Office\Office12\" cscript "C:\Program Files (x86)\Microsoft Office\Office12\OSPP.VBS" /dstatus >> C:\Office.txt
if exist "C:\Program Files (x86)\Microsoft Office\Office11\" cscript "C:\Program Files (x86)\Microsoft Office\Office11\OSPP.VBS" /dstatus >> C:\Office.txt

:exit
