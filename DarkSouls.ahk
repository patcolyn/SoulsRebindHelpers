SetTitleMatchMode, 1
SetTitleMatchMode, Fast
SetTimer, TabbedLabel, 100

TabbedLabel:
If (!WinActive("DARK SOULS") && !Tabbed)
{
Tabbed := True
Suspend On
}
else if (WinActive("DARK SOULS") && Tabbed)
{
Tabbed := False
Suspend Off
}
return

#IfWinActive DARK SOULS
*Alt::Space
*Space::
Send {Space down}
Sleep 15
Send {Space up}
KeyWait, Space
return
LWin::
Suspend On
return