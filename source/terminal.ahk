*<!t::
root =
Run, "C:\ubuntu.exe", %USERPROFILE%
WinWait, ahk_exe ubuntu.exe
WinActivate, ahk_exe ubuntu.exe
WinMaximize, ahk_exe ubuntu.exe
Sleep, 300
return

