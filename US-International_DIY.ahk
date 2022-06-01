;▓║▓▓▓▓▓▓▓▓▓▓▓▓▓▒▓▒ ▒▒▓▓▓▒▒▓▒▓▒▓▒▓▒ ▒▓▒▓▒▓▓▒▓▒▓▒ ▒▓▓▓▒▓▒ ▒▓ ▒▓▒ RALTUnicode  ▒▓ ▒▓▒ ▒▓▒▓

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒AHKconfig▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

#SingleInstance force						;ForceIgnorePromptOff
#Persistent
#NoEnv
#UseHook On								;OnOff
SetWorkingDir %A_ScriptDir%

;#InstallKeybdHook
;#InstallMouseHook
;#NoTrayIcon

#MaxThreads 100							;1-10-255
#MaxMem	1								;1-64-4095 Megabytes
#MaxThreadsBuffer Off						;OnOff
#MaxThreadsPerHotkey 2						;1-1-255

#MaxHotkeysPerInterval 1000					;70
#HotkeyInterval	10						;2000 Milliseconds

#HotkeyModifierTimeout -1					;-1 0 x Milliseconds
#IfTimeout 2000							;1000 Milliseconds
#ClipboardTimeout 200						;1000 Milliseconds

#MenuMaskKey vkFF							;Ctrl
#KeyHistory 0								;0-40-500
AutoTrim, On								;OnOff
SendMode Input

SetMouseDelay, -1							;10 Milliseconds
SetKeyDelay, 100, -1, -1
SetDefaultMouseSpeed, 33						;0-100
SetBatchLines, -1

SetCapsLockState, Off						;On Off AlwaysOn AlwaysOff
SetCapsLockState, AlwaysOff
SetNumLockState, On							;On Off AlwaysOn AlwaysOff
SetNumLockState, AlwaysOn
SetScrollLockState, Off						;On Off AlwaysOn AlwaysOff
SetScrollLockState, AlwaysOff
SetStoreCapsLockMode, Off					;OnOff

SetFormat, float, 0.6

StringCaseSense, Off						;OnOffLocale
CoordMode Mouse, Screen
Process Priority,,R							;L,B,N,A,H,R

DetectHiddenText, On
DetectHiddenWindows, On
SetTitleMatchMode RegEx
SetTitleMatchMode, fast

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Variables▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

SpecialActive :=0							; Special key is activated (two seconds available)

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Symbols▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

return										;▒▒▒▒▒▒▒▒End of excecution▒▒▒▒▒▒▒

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Key▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

SC056::										;▒▒▒▒▒▒▒▒Special VK_OEM_102▒▒▒▒▒▒
	if (SpecialActive) {
		return
	}
	SpecialActive :=1
	SetTimer, SpecialEnd, -2000				; Special hotkey available for two seconds
return

SpecialEnd:
	SpecialActive :=0
return

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Accents▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

*y::										; This is an example for the key Y
	if (SpecialActive) {
		Send {¥}							; If Special hotkey was pressed less than two seconds ago, Send ¥
		SpecialActive :=0					; And deactivated again for next key, unless you press it again
		return
	}									; Else...
	if yLock {							; (yLock: change the name each new key)
		return
	}
	yLock :=1
	yTimes :=0							; (yTimes: change the name each new key)
	Loop {
		KeyWait y, T0.012
		if !(ErrorLevel) {
			break
		}
		if (A_Index=16) {
			yTimes:=1
			break
		}
	}
	if (yTimes) {							; If long press
		if GetKeyState("Shift") {				; If Shift, send Ÿ
			Send {Ÿ}
		} else {									; Else, send ÿ
			Send {ÿ}
		}
	} else {								; Else
		if GetKeyState("Shift") {				; If Shift, send Y
			Send {Y}
		} else {									; Else, send y
			Send {y}
		}
	}
return

*y up::
	yLock :=0
Return
