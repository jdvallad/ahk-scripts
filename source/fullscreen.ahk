*<!f::
SetTitleMatchMode 2
if WinActive("ahk_exe mintty.exe"){
	Send !{f11}
} else {
	Send {f11}
}
Sleep, 300
return