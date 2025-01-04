#Requires AutoHotkey v2.0
#SingleInstance Force

;@Ahk2Exe-SetMainIcon icons\Arrows.ico
;@Ahk2Exe-AddResource icons\Arrows_off.ico, 206
;@Ahk2Exe-AddResource icons\Arrows_off.ico, 207
;@Ahk2Exe-AddResource icons\Arrows_off.ico, 208

!a:: ArrowListener().Start()

class ArrowListener extends InputHook {
    
    DirKeys := {
        Left  : "L", Numpad4 : "L", NumpadLeft  : "L",
        Right : "R", Numpad6 : "R", NumpadRight : "R",
        Up    : "U", Numpad8 : "U", NumpadUp    : "U",
        Down  : "D", Numpad2 : "D", NumpadDown  : "D",
        PgUp  : "1", Numpad9 : "1", NumpadPgUp  : "1",
        PgDn  : "2", Numpad3 : "2", NumpadPgDn  : "2",
        End   : "3", RShift : "3", Numpad1 : "3", NumpadEnd   : "3",
        Home  : "4", Enter  : "4", Numpad7 : "4", NumpadHome  : "4",
    }

    Arrows := {
        L   : "◂", R   : "▸", U   : "▴", D   : "▾",
        LL  : "←", RR  : "→", UU  : "↑", DD  : "↓",
        LLL : "⇐", RRR : "⇒", UUU : "⇑", DDD : "⇓",
        1   : "↗", 2   : "↘", 3   : "↙", 4   : "↖",
        11  : "↗", 22  : "↘", 33  : "↙", 44  : "↖",
        111 : "⇗", 222 : "⇘", 333 : "⇙", 444 : "⇖",
        LR  : "↔", RL  : "↔", UD  : "↕", DU  : "↕",
        LRL : "⇔", RLR : "⇔", UDU : "⇕", DUD : "⇕",
        UL  : "↰", UR  : "↱", DL  : "⤶", DR  : "⤷",
        RU  : "⤴", RD  : "⤵",
    }
    
    __New() {
        this.InCode := ""
        super.__New("L1")
        this.KeyOpt("{All}","NS")
        this.OnKeyUp := this.OnKeyUp_
        this.OnKeyDown := this.OnKeyDown_
    }

    OnKeyDown_(vk, sc) {
        key := GetKeyName(Format("vk{:x}sc{:x}", vk, sc))
        try {
            this.InCode .= this.DirKeys.%key%
        } catch PropertyError {
            this.Abort()
        }
    }
    OnKeyUp_(vk, sc) {
        key := GetKeyName(Format("vk{:x}sc{:x}", vk, sc))
        if (key = "LAlt") {
            this.End()  ; End on LAlt release
        }
    }
    
    End() {
        this.Stop()
        this.SendArrow()
    }

    Abort() {
        ; SoundBeep
        this.Stop()
    }

    SendArrow() {
        this.InCode := SubStr(this.InCode, 1, 3)
        try {
            Send this.Arrows.%this.InCode%
        } catch PropertyError {
            this.Abort()
        }
    }

}
