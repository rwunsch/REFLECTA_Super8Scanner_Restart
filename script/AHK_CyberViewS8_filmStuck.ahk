WinWait, ahk_exe Super8.exe, OK
if ErrorLevel
{
    MsgBox, WinWait timed out.
    return
}
else
{
	WinGetText, MessageText, Message,
	MsgBox, 0, "Cyberview Super8 - Continue Script", "The window exists. The text is:`n%MessageText%", 2
	sleep, 2000
	ControlClick, Button1, ahk_exe Super8.exe
	sleep, 2000
	ControlClick, Button31, ahk_exe Super8.exe
	sleep, 2000
	ControlClick, &Yes, CyberView S8
}
	
msgbox, 1310784, "Cyberview Super8 - Continue Script", This script closes after 2 seconds`nand starts again`nPush Esc to quit, 2
reload
esc::exitapp