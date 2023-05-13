;▓║▓▓▓▓▓▓▓▓▓▓▓▓▓▒▓▒ ▒▒▓▓▓▒▒▓▒▓▒▓▒▓▒ ▒▓▒▓▒▓▓▒▓▒▓▒ ▒▓▓▓▒▓▒ ▒▓ ▒▓▒ RALTUnicode  ▒▓ ▒▓▒ ▒▓▒▓

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒AHKconfig▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

#SingleInstance force								;ForceIgnorePromptOff
#Persistent
#NoEnv
#UseHook On											;OnOff
SetWorkingDir %A_ScriptDir%

;#InstallKeybdHook
;#InstallMouseHook
;#NoTrayIcon

#MaxThreads 100										;1-10-255
#MaxMem	1											;1-64-4095 Megabytes
#MaxThreadsBuffer Off								;OnOff
#MaxThreadsPerHotkey 2								;1-1-255

#MaxHotkeysPerInterval 1000							;70
#HotkeyInterval	10									;2000 Milliseconds

#HotkeyModifierTimeout -1							;-1 0 x Milliseconds
#IfTimeout 2000										;1000 Milliseconds
#ClipboardTimeout 200								;1000 Milliseconds

#MenuMaskKey vkFF									;Ctrl
#KeyHistory 0										;0-40-500
AutoTrim, On										;OnOff
SendMode Input

SetMouseDelay, -1									;10 Milliseconds
SetKeyDelay, 100, -1, -1
SetDefaultMouseSpeed, 33							;0-100
SetBatchLines, -1

SetCapsLockState, Off								;On Off AlwaysOn AlwaysOff
SetCapsLockState, AlwaysOff
SetNumLockState, On									;On Off AlwaysOn AlwaysOff
SetNumLockState, AlwaysOn
SetScrollLockState, Off								;On Off AlwaysOn AlwaysOff
SetScrollLockState, AlwaysOff
SetStoreCapsLockMode, Off							;OnOff

SetFormat, float, 0.6

StringCaseSense, Off								;OnOffLocale
CoordMode Mouse, Screen
Process Priority,,R									;L,B,N,A,H,R

DetectHiddenText, On
DetectHiddenWindows, On
SetTitleMatchMode RegEx
SetTitleMatchMode, fast

Send {CapsLock Up}
Send {Scrolllock Up}
;Send {Pause Up}
Send {Insert Up}
Send {LShift Up}
Send {RShift Up}
Send {LCtrl Up}
Send {RCtrl Up}
Send {LShift Up}
Send {RShift Up}

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Variables▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

Unicodemode :=1										; Mode: Character/Unicode/Ascii/Html name/Html number
UnicodePage :=1										; Page: Usual/Maths/Arrows/Drawing/Symbols or whatever you want
Lock :=0											; Lock the key in case of autorepeat, removed on release
DoubleAble :=0										; If short press has been done, before timeout, and double possible if quickly press again
DelAble :=0											; If del is available for a period of time, reinitialized evry press while active

Start :=A_TickCount									; Start time of key press
StartMedia :=A_TickCount
StartDel :=A_TickCount
StartMenu :=A_TickCount
StartLWin :=A_TickCount

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Symbols▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

UnicodeLine1:= "¿, ,¡, ,⁈, ,⁉, ,⁇, ,‼, ,‽, ,✓, ,✕, , , , "
UnicodeLine2:= "|, ,‖, ,/, ,\, ,¦, ,‗, ,—, ,⎼, ,_, ,‐, ,¯"
UnicodeLine3:= "§, ,¶, ,¤, ,⇌, ,⌐, , , , , ,·, ,°, ,∙, , "
UnicodeLine4:= "‱, ,‰, ,µ, ,⁎, , , , , , , ,■, ,☐, ,☑, ,☒"
UnicodeLine5:= "…, ,⋯, ,†, ,‡, , , , , , , ,‵, ,‶, ,‷, , "
UnicodeLine6:="№, ,º, ,ª, ,✉, ,⎙, ,㏄, ,ℹ, ,′, ,″, ,‴, ,⁗"
UnicodeLine7:="〈, ,〉, ,⟮, ,⟯, ,‘, ,’, ,‹, ,›, ,©, ,℠, ,℻"
UnicodeLine8:="⟨, ,⟩, ,《, ,》, ,“, ,”, ,«, ,», ,®, ,™, ,℡"
UnicodeLine9:= "Ⅰ,Ⅱ,Ⅲ,Ⅳ,Ⅴ,Ⅵ,Ⅶ,Ⅷ,Ⅸ,Ⅹ,Ⅺ,Ⅻ,Ⅼ,Ⅽ,Ⅾ,Ⅿ, ,æ,œ,Æ,Œ"
UnicodeLine10:="€,$,£,¥, ,ß, , ,´,`,^,¨,~,¯,˘,¸,˙,˛,ˇ,˝,˚"
UnicodeLine11:="Á,Ć,É,Í,Ĺ,Ń,Ó,Ŕ,Ś,Ú,Ý,Ź, ,À,È,Ì,Ò,Ù, , , "
UnicodeLine12:="á,ć,é,í,ĺ,ń,ó,ŕ,ś,ú,ý,ź, ,à,è,ì,ò,ù, , , "
UnicodeLine13:="Â,Ĉ,Ê,Ĝ,Ĥ,Î,Ĵ,Ô,Ŝ,Û, , , ,Ä,Ë,Ï,Ö,Ü,Ÿ, , "
UnicodeLine14:= "â,ĉ,ê,ĝ,ĥ,î,ĵ,ô,ŝ,û, , , ,ä,ë,ï,ö,ü,ÿ, , "
UnicodeLine15:="Č,Ď,Ě,Ǐ,Ľ,Ň,Ř,Š,Ť,Ž, ,Þ, ,Å,Ċ,Ė,Ġ,İ,Ŀ,Ů,Ż"
UnicodeLine16:= "č,ď,ě,ǐ,ľ,ň,ř,š,ť,ž, , , ,å,ċ,ė,ġ,ı,ŀ,ů,ż"
UnicodeLine17:= "Ç,Ģ,Ķ,Ļ,Ņ,Ŗ,Ş,Ţ, ,Ă,Ğ,Ŭ, ,Ã,Ĩ,Õ,Ñ,Ũ, ,Ő,Ű"
UnicodeLine18:="ç,ģ,ķ,ļ,ņ,ŗ,ş,ţ, ,ă,ğ,ŭ, ,ã,ĩ,õ,ñ,ũ, ,ő,ű"
UnicodeLine19:="Ā,Ē,Ī,Ō,Ū, , , ,Ą,Ę,Į,Ų, ,Đ,Ħ,Ĳ,Ł,Ø,Ŧ, ,þ"
UnicodeLine20:="ā,ē,ī,ō,ū, , , ,ą,ę,į,ų, ,đ,ħ,ĳ,ł,ø,ŧ, ,ð"

UnicodeLine21:="×,±,÷,≠,⌗,ø, , ,⌠, ,⌗,π,√, , , , , , , , "
UnicodeLine22:="≃,≄,≈,≉,≡, , , ,⌡, ,∞,⭢,⮞, , , , , , , , "
UnicodeLine23:="≤,≥,≲,≳,≦,≧,≨,≩,≮,≯,≰,≱, , , , , , , , , "
UnicodeLine24:="₁,₂,₃,₄,₅,₆,₇,₈,₉,₀,₍,₎,₊,₋,₌,ₓ,∖, , , , "
UnicodeLine25:="¹,²,³,⁴,⁵,⁶,⁷,⁸,⁹,⁰,⁽,⁾,⁺,⁻,⁼,ⁿ, , ,⅑,⅒,⅟"
UnicodeLine26:="⅛,¼,⅜,½,⅝,¾,⅞,⅓,⅔,⁄, ,⅕,⅖,⅗,⅘, ,⅙,⅚, ,⅐, "
UnicodeLine27:="⌒,⊾,⭕,⬭,◻,▭,△,◇,⬠,⬡, , , , , , , , , , , "
UnicodeLine28:="⦛,⦜,⦝,⦞,⦟,⦠,⦡,⦢,⦣,⦤,⦥,⦦,⦧,⦨,⦩,⦪,⦫,⦬,⦭,⦮,⦯"
UnicodeLine29:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine30:="√,∛,∑,∏,∐,∆,∇,∶, , , , , , , , , , , , , "
UnicodeLine31:="∩,∪,⊂,⊄,⊊,⊃,⊅,⊇,⊉,⊋,∈,∉,∝,∅, , , , , , , "
UnicodeLine32:="∁,∃,∄,∀,¬,∣, , , , , , , , , , , , , , , "
UnicodeLine33:="⨍,∫,∂,∞,∙, , , , , , , , , , , , , , , , "
UnicodeLine34:="㏒,㏑,ℇ,℮,㎧,ℓ,ϝ,℉,ℎ, , , , , , , , , , , , "
UnicodeLine35:="☇,⊿,≬,⦚,⪤,⪥,↝,⎋,⅏,⍽,⎆,⎔,⏚,⎓,⏦,⎍,⏍, , , , "
UnicodeLine36:="⦅,⦆,⦇,⦈,⦉,⦊, , , , , , , , , , , , , , , "
UnicodeLine37:="Α,Β,Γ,Δ,Ε,Ζ,Η,Θ,Ι,Κ,Λ,Μ,Ν,Ξ,Ο,Π,Ρ,Σ,Τ,Υ,Φ"
UnicodeLine38:="Χ,Ψ,Ω, , , , , , , , , , , , , , , , , , "
UnicodeLine39:="α,β,γ,δ,ε,ζ,η,θ,ι,κ,λ,μ,ν,ξ,ο,π,ρ,σ,ς,τ,υ"
UnicodeLine40:="φ,χ,ψ, , , , , , , , , , , , , , , , , , "

UnicodeLine41:=" ,⇶, ,➔, ,⇿, ,⊲, ,⊳, , , ,⮲, ,⮳, ,⮴, ,⮵, "
UnicodeLine42:=" ,⇐, ,⇔, ,⇒, ,⇍, ,⇎, ,⇏, ,⮰, ,⮱, ,⮶, ,⮷, "
UnicodeLine43:=" , ,⮝, , ,⮌, ,⮍, , ,⏶, , , , , , ,▵, , , "
UnicodeLine44:=" ,⮜, ,⮞, ,⮐, ,⮑, ,⏴, ,⏵, , , , ,◃, ,▹, , "
UnicodeLine45:=" , ,⮟, , ,⮏, ,⮎, , ,⏷, , , , , , ,▿, , , "
UnicodeLine46:=" , , , , ,⬉,⬆,⬈,⬍, , , ,⭶,⭱,⭷,⭥, , , , , "
UnicodeLine47:=" , , , , ,⬅, ,➡,⬌,⮕, , ,⭰, ,⭲,⭤, , , , , "
UnicodeLine48:=" , , , , ,⬋,⬇,⬊, , , , ,⭹,⭳,⭸, , , , , , "
UnicodeLine49:=" ,↖,↑,↗,↕, , , , ,⮅, , , , , , , ,⮁, , , "
UnicodeLine50:=" ,←, ,→,↔, , , ,⮄, ,⮆, , , , , ,⮀, ,⮂, , "
UnicodeLine51:=" ,↙,↓,↘, , , , , ,⮇, , , , , , , ,⮃, , , "
UnicodeLine52:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine53:=" ,⮪, ,⮫, , ,⮮, ,⮯, , ,↶, ,↷, , ,⮦, ,⮧, , "
UnicodeLine54:=" ,⮨, ,⮩, , ,⮬, ,⮭, , ,⤾, ,⤿, , ,⮤, ,⮥, , "
UnicodeLine55:=" ,⮢, ,⮣, , ,⟲, ,⟳, , ,⥁, ,⥀, , ,⤺, ,⤻, , "
UnicodeLine56:=" ,⮠, ,⮡, , ,⭮, ,⭯, , ,⤹, ,⤸, , ,⤽, ,⤼, , "
UnicodeLine57:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine58:=" , ,˄, , , , ,⤧, , , , ,⇡, , , ,⭦,⭡,⭧, , "
UnicodeLine59:=" ,˂, ,˃, , ,⤪, ,⤨, , ,⇠, ,⇢, , ,⭠, ,⭢, , "
UnicodeLine60:=" , ,˅, , , , ,⤩, , , , ,⇣, , , ,⭩,⭣,⭨, , "

UnicodeLine61:="┌,┬,┐,╔,╦,╗,╒,╤,╕,╓,╥,╖,─,│, ,◠, ,◜,◝, , "
UnicodeLine62:="├,┼,┤,╠,╬,╣,╞,╪,╡,╟,╫,╢,┄,┆, ,◡, ,◟,◞, , "
UnicodeLine63:="└,┴,┘,╚,╩,╝,╘,╧,╛,╙,╨,╜,═,║, , , , , , , "
UnicodeLine64:=" , , , , , , , , , , , , , , , ,░,▒,▓, , "
UnicodeLine65:="■,□,▢,▣,▤,▥,▦,▧,▨,▩,▪,▫, , ,◻,◼,◧,◫,◨,◩,◪"
UnicodeLine66:="▬,▭,▮,▯,▰,▱, , ,◆,◇,◈,◊, , , , ,◰,◱,◲,◳, "
UnicodeLine67:="▲,△,▴,▵, ,▶,▷,▸,▹,►,▻, ,◬,◭,◮, ,◸,◹, ,◤,◥"
UnicodeLine68:="▼,▽,▾,▿, ,◀,◁,◂,◃,◄,◅, , , , , ,◺,◿, ,◣,◢"
UnicodeLine69:="◉,○,◌,◍,◎,●, ,◐,◑,◒,◓,◔,◕, , , ,◴,◵,◶,◷, "
UnicodeLine70:="⛍,⛐,⛔,⛕,⛖,⛗,⛒,⛘,⛙,⛜,⛟,⛠, , , , ,⌓,◖◗,◯,◦, "
UnicodeLine71:=" , , , , , , , , , , ,✉, ,✆, ,✈, , , , , "
UnicodeLine72:=" ,╱,╭,╴,╮,╲, , ,⛩, ,⛪, ,⛫, ,⛬, ,⛯, ,⛰, ,⛱"
UnicodeLine73:="╳, ,╵,┼,╷, ,╳, , ,⛲, ,⛳, ,⛴, ,⛵, ,⛷, ,⛸, "
UnicodeLine74:=" ,╲,╰,╶,╯,╱, , ,⛹, ,⛺, ,⛻, ,⛼, ,⛽, ,⛾, ,⛿"
UnicodeLine75:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine76:=" ,▁,▂,▃,▄,▅,▆,▇,█,▉,▊,▋,▌,▍,▎,▏, ,▐, , , "
UnicodeLine77:="▔,▕,▖,▗, ,▘,▙,▚,▛,▜,▝,▞,▟,▀, ,▍,▎, , , , , "
UnicodeLine78:=" , , , , , , , , , , , , , , , , , , , , "
UnicodeLine79:="⌫,⌧,⌦, ,⌨, ,⌛, ,⌚, ,⏏, ,⧎, ,⇪, ,⧉, ,♻, , "
UnicodeLine80:=" ,☠, ,⮔, ,⛶, ,⬚, ,⯏, ,☎, ,☜, ,☝, ,☞, ,☟, "

UnicodeLine81:="⓿,❶,❷,❸,❹,❺,❻,❼,❽,❾,❿,⓫,⓬,⓭,⓮,⓯,⓰,⓱,⓲,⓳,⓴"
UnicodeLine82:="☼,☀,☁,☂,☔,⛄,⛇, , , , , , , , , , , , , , "
UnicodeLine83:="Ⓗ,Ⓜ,✆,♿,✈,⛨,⚡,↟,⚰,⚱,⛼,⚑,⛬,⟰,⌘,⛾,⛻,⎈, , , "
UnicodeLine84:="♈,♉,♊,♋,♌,♍,♎,♏,♐,♑,♒,♓, , , , , , , , , "
UnicodeLine85:="☉,☽,☿,♀,♂,♁,♃,♄,♅,♆,♇, , , , , , , , , , "
UnicodeLine86:="⚀,⚁,⚂,⚃,⚄,⚅, , , , , , , , , , , , , , , "
UnicodeLine87:="☺,☹,☯,☮,⚆,⚈,⚉,⚇,♾, , , , , , , , , , , , "
UnicodeLine88:="✴,✹,✫,★,☆,✬,⭐,❀,☘,❤,✤,⚘, , , , , , , , , "
UnicodeLine89:="✡,⚕,☤,✝,☨,⚶, , , , , , , , , , , , , , , "
UnicodeLine90:="†,⚔,ⳝ, , , , , , , , , , , , , , , , , , "
UnicodeLine91:="⚛,⚝,☣,₪,𖦹, , , , , , , , , , , , , , , , "
UnicodeLine92:="⏏,⌂,⧡,⧗,♪,⸙,⸎,⚒,☩,ⴧ,※,✦,⚖, , , , , , , , "
UnicodeLine93:="⏹,⏯,⏸,⏺,⏪,⏩,⏮,⏭, , , , , , , , , , , , , "
UnicodeLine94:="♔,♕,♖,♗,♘,♙,♚,♛,♜,♝,♞,♟, , , , , , , , , "
UnicodeLine95:="♠,♥,♦,♣,♤,♡,♢,♧,⛁,⛀,⛃,⛂, , , , , , , , , "
UnicodeLine96:="☷,☳,☱,☵,☴,☶,☲,☰,⚏,⚍,⚎,⚌,⚋,⚊, , , , , , , "
UnicodeLine97:="⽽,⽀,⿒,⿎,⻩,⾅,⼲,⾯,⾞,⽏,⽇,⼧,⼭, , , , , , , , "
UnicodeLine98:="⼻,⽍,⿏,⾷,⾔,⾋,⾂,⿕,⾁,⾟,⻬,⻫, , , , , , , , , "
UnicodeLine99:="⾗,⾤,⾜,⾦,⾾,⾃,⻨,⽶,⽃,⻚,⽊,⾹,⽢, , , , , , , , "
UnicodeLine100:="⽗,⿌,⻪,⼵,⼡,⼺,⽰,⾐,⾉,⾝,⿐, , , , , , , , , , "

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Gui▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

OnMessage(0x200, "WM_MOUSEMOVE")

Gui Unicode:Destroy
Gui Unicode:Font, s8 cWhite
Gui Unicode:Color, 0x0000ff
Gui Unicode:Add, Button, gUnicodeMenu1 x6 y7 w68 +Default, Character
Gui Unicode:Add, Button, gUnicodeMenu2 x78 y7 w68, Unicode
Gui Unicode:Add, Button, gUnicodeMenu3 x150 y7 w68, Ascii
Gui Unicode:Add, Button, gUnicodeMenu4 x222 y7 w68, Html name
Gui Unicode:Add, Button, gUnicodeMenu5 x294 y7 w68, Html number
Gui Unicode:Font, s40
Gui Unicode:Add, Text, x368 y1 w58 h58 Center vUnicodeSymbol, X
Gui Unicode:Font, s8
Gui Unicode:Add, Tab3, x4 y40 w420 h433 vUnicodeMenu, Usual|Maths|Arrows|Drawing|Symbols
Gui Unicode:Font, s14

Loop 5 {
	Gui Unicode:Tab, %A_Index%
	UnicodePagetmp:=A_Index-1
	y:=63
	Loop 20 {
		x=6
		UnicodeLine:=A_Index+20*UnicodePagetmp
		Loop, parse, UnicodeLine%UnicodeLine%, `,
		{
			Gui Unicode:Add, Text, x%x% y%y% Center gSymbolSelected, %A_LoopField%
			x+=20
		}
		y+=20
	}
}
Gui Unicode:Color, 0x0000ff
Gui Unicode:+LastFound +Caption +AlwaysOnTop +ToolWindow +Border +E0x20 +E0x08000000
Gui Unicode:Show, w428 h478 center,RALTUnicode
SplashTextOff
Gui Unicode:Hide
return												;░░░░░░░░End of excecution░░░░░░░

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Program▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

UnicodeMenu1:
UnicodeMenu2:
UnicodeMenu3:
UnicodeMenu4:
UnicodeMenu5:
	Unicodemode:=SubStr(A_ThisLabel, 12)
return

SymbolSelected:
	this:=asc(A_GuiControl)
	Transform, htmlVal1, HTML, %A_GuiControl% ,1
	Transform, htmlVal2, HTML, %A_GuiControl% ,2
	if (strlen(htmlVal1)=1)	{
		htmlVal1:=htmlVal2
	}
	ascval:=this
	SetFormat, IntegerFast, hex
	this += 0
	this .= ""
	asciival:=this
	StringTrimLeft, asciival, asciival, 2
	SetFormat, IntegerFast, d
	Gui Unicode:Hide

	if (Unicodemode=1) {
		Send {u+%this%}
	}
	if (Unicodemode=2) {
		Send {raw}%asciival%
	}
	if (Unicodemode=3) {
		Send {raw}%ascval%
	}
	if (Unicodemode=4) {
		Send {raw}%htmlVAL1%
	}
	if (Unicodemode=5) {
		Send {raw}%htmlVAL2%
	}
	Sleep 50
	Gui Unicode:Show
Return

WM_MOUSEMOVE() {
	global UnicodeSymbol
	MouseGetPos,,,, control,2
	ControlGetText, UnicodeSymbol,, ahk_id %control%
	if (strlen(UnicodeSymbol)=1) {
		Guicontrol ,,UnicodeSymbol,%UnicodeSymbol%
	}
}

;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Key▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒

LAlt & Space::										;▒▒▒▒▒▒▒▒Your own key there▒▒▒▒▒▒
	if (Lock) {
		return
	}
	Lock :=1
	Start :=A_TickCount
	SetTimer, Long, -400							;▒▒▒▒▒▒▒▒Long press time there▒▒▒
return

LAlt & Space up::									;▒▒▒▒▒▒▒▒Your own key there▒▒▒▒▒▒
	SetTimer, Long, Off
	if (A_TickCount - Start < 220) {
		UnicodeActive := WinActive("RALTUnicode") ? 1 : 0
		if (UnicodeActive) {
			SetTimer, Simple, 220
		}
	}
	Lock :=0
Return

Simple:
	SetTimer, Long, Off
	SetTimer, Simple, Off
	UnicodePage := (UnicodePage=5)? 1 : UnicodePage+1
	GuiControl Unicode:Choose, UnicodeMenu, |%UnicodePage%
return

Long:
	SetTimer, Simple, Off
	SetTimer, Long, Off
	UnicodeActive := WinActive("RALTUnicode") ? 1 : 0
	If (UnicodeActive) {
		Gui Unicode:Hide
	} else {
		Gui Unicode:Show
	}
return

;░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░No NumLock░░░░░░░░░░░░░░
/*
NumLock::return

$NumpadHome::Send {7}
$NumpadUp::Send {8}
$NumpadPgUp::Send {9}

$NumpadLeft::Send {4}
$NumpadClear::Send {5}
$NumpadRight::Send {6}

$NumpadEnd::Send {1}
$NumpadDown::Send {2}
$NumpadPgDn::Send {3}

$NumpadIns::Send {0}
$NumpadDel::Send {.}

$!NumpadHome::Send {7}
$!NumpadUp::Send {8}
$!NumpadPgUp::Send {9}

$!NumpadLeft::Send {4}
$!NumpadClear::Send {5}
$!NumpadRight::Send {6}

$!NumpadEnd::Send {1}
$!NumpadDown::Send {2}
$!NumpadPgDn::Send {3}

$!NumpadIns::Send {0}
$!NumpadDel::Send {.}
*/
;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Miscellaneous▒▒▒▒▒▒▒▒▒▒▒

;*SC12E::return										;Volume_Down
;*SC130::return										;Volume_Up
;*SC120::return										;Volume_Mute
;*SC124::return										;Media_Stop
;*SC110::return										;Media_Prev
;*SC119::return										;Media_Next
;*SC122::return										;Media_Play_Pause
;*SC147::return										;Home
;*SC14F::return										;End
;*SC153::return										;Delete
;*SC149::return										;PgUp
;*SC151::return										;PgDn
;*SC137::return										;PrintScreen

;$CapsLock::return									;░░░░░░░░No CapsLock░░░░░░░░░░░░░
;*SC046::return										;░░░░░░░░No ScrollLock░░░░░░░░░░░
;*SC045::return										;░░░░░░░░No Pause░░░░░░░░░░░░░░░░
;*SC152::return										;░░░░░░░░No Insert░░░░░░░░░░░░░░░

;^SC010::Send ^z									;░░░░░░░░Undo with Ctrl-Q░░░░░░░░
;^SC01F::Send ^y									;░░░░░░░░Redo with Ctrl-S░░░░░░░░

;RControl & SC001::!F4								;░░░░░░░░Alt-F4 with RCtrl-Esc░░░
;RControl & SPACE::Winset, AlwaysOnTop, , A			;░░░░░░░░AOT with RCtrl-SPACE░░░░

;RControl & SC14B::Home								;░░░░░░░░Home with RCtrl-Left░░░░
;RControl & SC14D::End								;░░░░░░░░End with RCtrl-Right░░░░
;RControl & SC148::PgUp								;░░░░░░░░PgUp with RCtrl-Up░░░░░░
;RControl & SC150::PgDn								;░░░░░░░░PgDn with RCtrl-Down░░░░

;░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░Media double░░░░░░░░░░░░
/*
*$SC122::
	if (LockMedia1) {
		return
	}
	LockMedia1 :=1
	if (A_TickCount - StartMedia < 210) {			;░░░░░░░░Double press time░░░░░░░
		StartMedia :=A_TickCount - 210
		Send {Media_Play_Pause}						;░░░░░░░░Send again░░░░░░░░░░░░░░
		Send {Media_Next}							;░░░░░░░░and Media_Next░░░░░░░░░░
	} else {
		StartMedia :=A_TickCount
		Send {Media_Play_Pause}
	}
return
SC122 up::
	LockMedia1 :=0
Return

*$SC120::
	if (LockMedia2) {
		return
	}
	LockMedia2 :=1
	if (A_TickCount - StartMedia < 210) {			;░░░░░░░░Double press time░░░░░░░
		StartMedia :=A_TickCount - 210
		Send {Volume_Mute}							;░░░░░░░░Send again░░░░░░░░░░░░░░
		Send {Media_Prev}							;░░░░░░░░and Media_Prev░░░░░░░░░░
	} else {
		StartMedia :=A_TickCount
		Send {Volume_Mute}
	}
return
SC120 up::
	LockMedia2 :=0
Return
*/
;░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░Del double░░░░░░░░░░░░░░
/*
$Delete::
	if (LockDel) {
		return
	}
	LockDel :=1
	if (DelAble) {
		StartDel :=A_TickCount - 210
		Send {Delete}
	} else if (A_TickCount - StartDel < 210) {		;░░░░░░░░Double press time░░░░░░░
		StartDel :=A_TickCount - 210
		DelAble :=1
		Send {Delete}
	} else {
		StartDel :=A_TickCount
	}
	SetTimer, LongDel, -600							;░░░░░░░░Active time there░░░░░░░
return
Delete up::
	LockDel :=0
Return

LongDel:
	SetTimer, LongDel, Off
	DelAble :=0
return
*/
;░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░LWin double & long░░░░░░
/*
$LWin::
	if (LockLWin) {
		return
	}
	LockLWin :=1
	LongLWinOn :=0
	if (A_TickCount - StartLWin < 210) {			;░░░░░░░░Double press time░░░░░░░
		StartLWin :=A_TickCount - 210
		Send {LWin}
	} else {
		StartLWin :=A_TickCount
		SetTimer, LongLWin, -400					;░░░░░░░░Long press time there░░░
	}
return
LWin up::
	SetTimer, LongLWin, Off
	LockLWin :=0
	if (LongLWinOn) {
		Send {LWin Up}
		LongLWinOn :=0
	}
Return

LongLWin:
	SetTimer, LongLWin, Off
	LongLWinOn :=1
	Send {LWin Down}
return
*/
;▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒Long Press Accent ex.▒▒▒
/*
*y::												; This is an example for the key Y
	if (SpecialActive) {
		Send {¥}									; If Special hotkey was pressed less than two seconds ago, Send ¥
		SpecialActive :=0							; And deactivated again for next key, unless you press it again
		return
	}												; Else...
	if yLock {										; (yLock: change the name each new key)
		return
	}
	yLock :=1
	yTimes :=0										; (yTimes: change the name each new key)
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
	if (yTimes) {									; If long press
		if GetKeyState("Shift") {					; If Shift, send Ÿ
			Send {Ÿ}
		} else {									; Else, send ÿ
			Send {ÿ}
		}
	} else {										; Else
		if GetKeyState("Shift") {					; If Shift, send Y
			Send {Y}
		} else {									; Else, send y
			Send {y}
		}
	}
return

*y up::
	yLock :=0
Return
*/