SetTitleMatchMode, 1
SetTitleMatchMode, Fast
SetTimer, TabbedLabel, 100

; Disable/Enable script on focus change
TabbedLabel:
If (!WinActive("ELDEN RING") && !Tabbed)
{
Tabbed := True
Suspend On
}
else if (WinActive("ELDEN RING") && Tabbed)
{
Tabbed := False
Suspend Off
}
return

#IfWinActive ELDEN RING
; Roll bind
*Alt::Space
*Space::
Send {Space down}
Sleep 15
Send {Space up}
KeyWait, Space
return

; Map
*m::g

; Wield swap
*XButton1::
Send {e down}
Sleep 15
Send {LButton down}
Sleep 15
Send {e up}{LButton up}
return
*XButton2::
Send {e down}
Sleep 15
Send {RButton down}
Sleep 15
Send {e up}{RButton up}
return

; Pouch items
*F1::
Send {e down}
Sleep 15
Send {1 down}
Sleep 15
Send {e up}{1 up}
return
*F2::
Send {e down}
Sleep 15
Send {2 down}
Sleep 15
Send {e up}{2 up}
return
*F3::
Send {e down}
Sleep 15
Send {3 down}
Sleep 15
Send {e up}{3 up}
return
*F4::
Send {e down}
Sleep 15
Send {4 down}
Sleep 15
Send {e up}{4 up}
return

; Stop script for alt+tabbing
LWin::
Suspend On
return
