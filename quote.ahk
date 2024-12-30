#Requires AutoHotkey v2.0
#SingleInstance Force

;@Ahk2Exe-SetMainIcon icons\Quote.ico
;@Ahk2Exe-AddResource icons\Quote_off.ico, 206
;@Ahk2Exe-AddResource icons\Quote_off.ico, 207
;@Ahk2Exe-AddResource icons\Quote_off.ico, 208

!2:: QuoteListener(false).Start()
!+2:: QuoteListener(true).Start()

class QuoteListener extends InputHook {
    
    Openers := ["“", "« ", "‘"]
    Closers := ["”", " »", "’"]
    
    __New(closing) {
        if closing
            this.marks := this.Closers
        else
            this.marks := this.Openers
        this.i := 1
        Send this.marks[this.i]
        super.__New("I1")
        this.KeyOpt("{All}","NS")
        this.OnKeyUp := this.OnKeyUp_
        this.OnKeyDown := this.OnKeyDown_
    }

    OnKeyDown_(vk, sc) {
        key := GetKeyName(Format("vk{:x}sc{:x}", vk, sc))
        if key != "2" {
            this.Stop()
        }
        bs := StrLen(this.marks[this.i])
        this.i := 1 + Mod(this.i, 3)
        Send Format("{Backspace {:}}{:}", bs, this.marks[this.i])
    }

    OnKeyUp_(vk, sc) {
        key := GetKeyName(Format("vk{:x}sc{:x}", vk, sc))
        if key = "LAlt" {
            this.Stop()  ; End on LAlt release
            return
        }
    }

}
