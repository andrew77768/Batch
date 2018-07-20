REM To change the version you can edit the updatetoversion var.
REM Versions can be found here: https://docs.microsoft.com/en-gb/officeupdates/update-history-office365-proplus-by-version
REM For 2013, 2016 & 365/

@echo off
echo Starting!
pause
pushd %programfiles%\common files\microsoft shared\clicktorun
officec2rclient.exe /update user updatetoversion=16.0.7341.2035
echo Done!
