net group /domain >> Groups.txt
net user /domain >> Users.txt

FOR /f "tokens=* delims=*" %%G in ('net group /domain') do (
	net group %%G /domain  >> Out.txt
)

pause
