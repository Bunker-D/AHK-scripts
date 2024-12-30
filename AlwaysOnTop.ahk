#Requires AutoHotkey v2.0
#SingleInstance Force

;@Ahk2Exe-SetMainIcon icons\AlwaysOnTop.ico
;@Ahk2Exe-AddResource icons\AlwaysOnTop_off.ico, 206
;@Ahk2Exe-AddResource icons\AlwaysOnTop_off.ico, 207
;@Ahk2Exe-AddResource icons\AlwaysOnTop_off.ico, 208

; Win + Page Up -> Always on top
#PgUp:: {
	WinActive "A"
	WinSetAlwaysOnTop 1
	WinSetTransparent ""
}

; Win + Insert -> Always on top + Transparent
#Del:: {
	WinActive "A"
	WinSetAlwaysOnTop 1
	WinSetTransparent 180
}

; Win + Page Down -> Off always on top
#PgDn:: {
	WinActive "A"
	WinSetAlwaysOnTop 0
	WinSetTransparent ""
}
