*<!f::
SetTitleMatchMode 2
if WinActive("ahk_exe ubuntu.exe")
	Send !+{Enter}
else
	Send {f11}
Sleep, 300
return