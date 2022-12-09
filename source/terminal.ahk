SwitchToTerminal()
{
	Run, wt
	Sleep, 300
	WinActivate, ahk_exe WindowsTerminal.exe
	WinShow, ahk_exe WindowsTerminal.exe
	Sleep, 300
}
<!t::SwitchToTerminal()