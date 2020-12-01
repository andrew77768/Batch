REM Removes old XLS documents from file server shared folder, copies the newly generated Opera export, clears the Opera export folder and sends email on completion

del /Q \\FILESERVER-HOSTNAME\Shared\IT\ANPR\*.xls

xcopy /F \\OPERASERVER-HOSTNAME\D$\MICROS\OPERA\export\OPERA\rock\*.xls \\FILESERVER-HOSTNAME\Shared\IT\ANPR\*.xls

del /Q \\OPERASERVER-HOSTNAME\D$\MICROS\OPERA\export\OPERA\rock\*.xls

Powershell.exe -executionpolicy remotesigned -File "\\FILESERVER-HOSTNAME\Shared\IT\ANPR\SendEmail.ps1"
