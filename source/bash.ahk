*<!t::
root =
Run, "C:\Program Files\Git\git-bash.exe", %USERPROFILE%
WinWait, ahk_exe mintty.exe
WinActivate, ahk_exe mintty.exe
WinMaximize, ahk_exe mintty.exe
Sleep, 300
return