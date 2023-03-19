#CommentFlag //

// Class MyFavoriteScripts{

	openBrowser(){
		// Opens in instance of the browser of your choice
		Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
		WinWait, ahk_exe msedge.exe
		WinActivate, ahk_exe msedge.exe
		Sleep 300
		return
	}

	deleteTab(){
		// Closes the current tab
		WinKill, A
		return
	}

	fullScreenTab(){
		// Sets the current tab to fullscreen
		SetTitleMatchMode 2
		if WinActive("ahk_exe ubuntu.exe"){
			Send !+{Enter}
		}
		else{
			Send {f11}
		}
		Sleep, 300
		return
	}

	maximizeTab(){
		// Maximizes the current tab
		WinMaximize, A
		return
	}

	pasteAndTrim(){
		// Pastes content of clipboard after trimming all whitespace
		Clip0 = %ClipBoardAll%
		temp = %ClipBoard%
		StringReplace,temp,temp,`r`n,,A
		Clipboard = %temp%
		Send ^v
		Sleep 300 
		ClipBoard = %Clip0%
		VarSetCapacity(Clip0, 0)
		VarSetCapacity(temp, 0)
		return
	}

	minimizeTab(){
		// Minimizes the current tab
		WinMinimize, A
		return
	}

	snipAndCopy(){
		// Opens snipping window and sends content to clipboard
		Send {LWin down}{Shift down}s{LWin up}{Shift up}
		return
	}

	snipAndSave(){
		// Opens snipping window and opens dialog box to save content
		Send {LWin down}{Shift down}s{LWin up}{Shift up}
		Run, cmd /c start /min "" powershell -WindowStyle Hidden -Command "[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.forms');$dlg = New-Object System.Windows.Forms.SaveFileDialog;					 	$dlg.FileName='screenshot';$dlg.DefaultExt='.png';$dlg.Filter='image (.png)|*.png';$result = $dlg.ShowDialog((New-Object System.Windows.Forms.Form -Property @{TopMost=$true })) ;if($result){;(get-clipboard -format 			 	image).save($dlg.FileName);}"
		return
	}

	openTerminal(){
		// Opens terminal as new tab
		Run, wt
		Sleep, 300
		WinActivate, ahk_exe WindowsTerminal.exe
		WinShow, ahk_exe WindowsTerminal.exe
		Sleep, 300
		return
	}

	vimLeft(){
		// Moves the cursor to the left
		Send {Left}
		return
	}

	vimRight(){
		// Moves the cursor to the right
		Send {Right}
		return
	}

	vimDown(){
		// Moves the cursor down
		Send {Down}
		return
	}	

	vimUp(){
		// Moves the cursor up
		Send {Up}
		return
	}

	vimStartOfLine(){
		// Moves the cursor to the start of the current line
		Send {Home}
		return
	}

	vimEndOfLine(){
		// Moves the cursor to the end of the current line
		Send {End}
		return
	}

	vimEndOfPage(){
		// Moves the cursor to the end of the current scrollable text body
		Send {Ctrl Down}
		Send {End}
		Send {Ctrl Up}
		return
	}

	vimStartOfPage(){
		// Moves the cursor to the start of the current scrollable text body
		If (A_ThisHotkey == A_PriorHotkey && A_TimeSincePriorHotkey < 500){
			Send {Ctrl Down}
			Send {Home}
			Send {Ctrl Up}
		}
		return
	}

// }


////////////////////////////////////////////////////////////////////////////////


// Class HotKeyAssignments {

	*<!b:: openBrowser()
	
	*<!d:: deleteTab()

	*<!f:: fullScreenTab()

	*<!m:: maximizeTab()

	*<!v:: pasteAndTrim()

	*<!r:: minimizeTab()

	*<!s:: snipAndCopy()

	*<!<+s:: snipAndSave()

	*<!t:: openTerminal()
	
	*!h:: vimLeft()
	
	*!l:: vimRight()
	
	*!j:: vimDown()

	*!k:: vimUp()
	
	*!*:: vimStartOfLine()

	*!$:: vimEndOfLine()

	*!+g:: vimEndOfPage()

	*!g:: vimStartOfPage()

// }