#Requires AutoHotkey v2.0
#SingleInstance Force


Format_Msec(ms) {
	t := Buffer(256)
	DllCall("GetDurationFormat", "uint", 2048, "uint", 0, "ptr", 0, "int64", ms*10000, "wstr", "mm':'ss':'fff", "ptr", t.Ptr, "int", 256)
	return StrGet(t.Ptr)
}

class Timer {
	__New() {
		this.InitGui()
		this.timer := ObjBindMethod(this, "Tick")
		this.baseTick := 0
	}
	
	Start() {
		SetTimer this.timer, 1000
		this.text.Text := "00:00"
		this.seconds := 0
		this.minutes := 0
		this.secReminder := 0
		this.baseTick := A_TickCount
		this.text.SetFont("ca20000", )
		this.gui.Show("x3050 y1750 NoActivate")
	}
	Pause() {
		SetTimer this.timer, 0
		this.secReminder := 1000 - Mod(A_TickCount - this.baseTick, 1000)
		this.text.SetFont("c363636", )
	}
	Resume() {
		this.text.SetFont("ca20000", )
		Sleep this.secReminder
		this.baseTick := A_TickCount
		SetTimer this.timer, 1000
		this.Tick()
		this.secReminder := 0
	}
	End() {
		SetTimer this.timer, 0
		this.gui.Hide()
		this.baseTick := 0
	}

	StartOrStop() {
		if (this.baseTick) {
			this.End()
		} else {
			this.Start()
		}
	}
	PauseOrResume() {
		if (this.secReminder) {
			this.Resume()
		} else {
			this.Pause()
		}
	}

	InitGui() {
		this.gui := Gui()
		this.gui.Opt("+LastFound +AlwaysOnTop -Caption +ToolWindow")
		UnusedColor := "123456"
		this.gui.BackColor := UnusedColor
		WinSetTransColor(UnusedColor)
		this.gui.SetFont("ca20000 s92", "Britannic Bold") ; "Inter Black", "Rockwell Extra Bold"
		this.text := this.gui.Add("Text", , "00:00")
	}

	Tick() {
		++this.seconds
		if (this.seconds > 59) {
			this.seconds := 0
			++this.minutes
		}
		this.text.Text := Format("{:02}:{:02}", this.minutes, this.seconds)
	}

}

t := Timer()

F3:: t.StartOrStop()
F4:: t.PauseOrResume()


; 💡 This strategy implies accuracy loss at pause/resume, but very low CPU usage.

