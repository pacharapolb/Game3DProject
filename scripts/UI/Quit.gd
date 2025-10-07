extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	self.connect("pressed", Callable(self, "OnPressed"))
	self.set_focus_mode(Control.FOCUS_ALL)	

# Called every frame. 'delta' is the elapsed time since the previous frame.



func OnPressed():
	if Variables.Activate_button == true:
		get_tree().quit()
