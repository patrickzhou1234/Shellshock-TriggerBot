#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

`::
Loop, {
    if GetKeyState("Delete", "P") {
        break
    }
    PixelGetColor, color, 970, 570
    idx0:=SubStr(color, 3, 1)
    idx1:=SubStr(color, 4, 1)
    idx2:=SubStr(color, 5, 1)
    idx3:=SubStr(color, 6, 1)
    idx4:=SubStr(color, 7, 1)
    idx5:=SubStr(color, 8, 1)
    if (color="0xFFFFFF") {
        Send {LButton down}100{LButton up}
    }
    if (color="0x4A4B4D") {
        Send {LButton down}100{LButton up}
    }
    Sleep, 0.1
}
return

Tab::
MouseGetPos, x, y
PixelGetColor, color, x, y
MsgBox, %color%, %x%, %y%
Return

;0xCCCCCC
;971, 566