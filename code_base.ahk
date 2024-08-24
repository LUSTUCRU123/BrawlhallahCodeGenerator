#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

Sleep, 3000

FileRead, codes, brawlhallaCode.txt

if (ErrorLevel)
{
    ExitApp
}

Loop, parse, codes, `n, `r
{
    code := A_LoopField

    if (code = "")
        Continue

    Send, {Enter down}
    Sleep, 50
    Send, {Enter up}
    Sleep, 1000

    Clipboard := code
    ClipWait, 2
    Sleep, 500

    Send, ^a
    Sleep, 200
    Send, {Backspace}
    Sleep, 200

    Send, ^v
    Sleep, 200

    Send, {Enter down}
    Sleep, 50
    Send, {Enter up}
    Sleep, 5200

    Send, {Enter down}
    Sleep, 50
    Send, {Enter up}
    Sleep, 500
}
