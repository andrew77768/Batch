REM This is an old project that fetches the Concept files and 7ZIp, install 7ZIP and unzips the concept files for man install.

ECHO OFF
ECHO Logging into the network drive.
net use Y: "\\CONCEPTDBSERVER\C$\"
ECHO Moving 7Zip to the system drive

copy "\\CONCEPTDBSERVER\C$\7z1604-x64.msi" "%systemdrive%"
ECHO Moved 7Zip. Moving Concept Installation Files.

copy "\\CONCEPTDBSERVER\C$\Concept 298 Installation.zip" "%systemdrive%"
ECHO Moved Concept Installation Files

net use Y: \delete

RunProgram="7z1604-x64.msi" /q
ECHO Installing 7Zip now

7z e Concept 298 Installation.zip -oc:\Install -yr
