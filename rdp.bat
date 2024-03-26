REM Ubah port RDP
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber /t REG_DWORD /d 1234 /f

REM Restart Layanan RDP
net stop TermService
net start TermService

REM Buka port di Firewall (Opsional)
netsh advfirewall firewall add rule name="RDP Port" dir=in action=allow protocol=TCP localport=1234

