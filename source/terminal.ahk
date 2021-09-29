*<!t::
root =
Run, "C:\Program Files\WindowsApps\CanonicalGroupLimited.UbuntuonWindows_2004.2021.825.0_x64__79rhkp1fndgsc\ubuntu.exe", %USERPROFILE%
WinWait, ahk_exe ubuntu.exe
WinActivate, ahk_exe ubuntu.exe
WinMaximize, ahk_exe ubuntu.exe
Sleep, 300
return

