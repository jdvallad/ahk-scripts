*<!v::
   Clip0 = %ClipBoardAll%
   temp = %ClipBoard%
   StringReplace,temp,temp,`r`n,,A
   Clipboard = %temp%
   Send ^v
   Sleep 300 
   ClipBoard = %Clip0%
   VarSetCapacity(Clip0, 0)
   VarSetCapacity(temp, 0)
   Return