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
    if (color="0xFFFFFF") {
        Send {LButton down}100{LButton up}
    }
    Sleep, 1
}
return

Tab::
MouseGetPos, x, y
PixelGetColor, color, x, y
MsgBox, %color%, %x%, %y%
Return

;0xCCCCCC
;971, 566