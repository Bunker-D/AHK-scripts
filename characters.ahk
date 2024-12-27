#Requires AutoHotkey v2.0
#SingleInstance Force

SendMode "InputThenPlay"

!y:: Send "<"
!x:: Send ">"
!.:: Send "·"
<^>!.:: Send "·"
!+.:: Send "•"
!NumpadDiv:: Send "\"
!+7:: Send "\"
+^Space:: Send " "
+é:: Send "É"
+è:: Send "È"
+à:: Send "À"
!+4:: Send "Ç"
!+3:: Send "×"

; Replacements
:*?C0:,oe::œ
:*?C0:,ae::æ
:?*:,...::...
:?:...::…
