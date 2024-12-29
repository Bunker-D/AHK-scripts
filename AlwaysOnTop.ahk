#Requires AutoHotkey v2.0
#SingleInstance Force

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
