*!h::
	Send {Left}
	return

*!l::
	Send {Right}
	return

*!j::
	Send {Down}
	return

*!k::
	Send {Up}
	return

*!*::
	Send {Home}
	return

*!$::
	Send {End}
	return

*!+g::
	Send {Ctrl Down}
	Send {End}
	Send {Ctrl Up}
	return

*!g::
	If (A_ThisHotkey == A_PriorHotkey && A_TimeSincePriorHotkey < 500){
		Send {Ctrl Down}
		Send {Home}
		Send {Ctrl Up}
	}
	return