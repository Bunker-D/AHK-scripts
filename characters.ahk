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
; :?*:,---::–
; :?*:,--::–

:?*XZ:,--:: Send "--"
:?*X:--:: Send "–"
#HotIf A_PriorHotKey A_PriorKey = ":?*X:---"
:?*X:-::Send "{Bs}—"
#HotIf (A_PriorHotKey = ":?*XZ:,--" or A_PriorHotKey = ":*?X:-") and A_PriorKey = "-" and A_TimeSincePriorHotkey < 1000
:*?X:-:: Send "-"
; ▲  ,-- replacement cancels -- replacements for 1 second after last -
;    :*?X: different from prior :?*X: to avoid conflation with --- replacement
#HotIf
