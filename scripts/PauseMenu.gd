extends Node2D

var Pressed = false

func _ready():
	Pressed = false
	$CanvasLayer.visible = false
	Engine.time_scale = 1.0  
 
func MenuShowing():
		Pressed = !Pressed  
		Variables.PauseButton = Pressed
		$CanvasLayer.visible = Pressed 
		if Pressed == false:
			$CanvasLayer/VBoxContainer2.visible = false
		if $CanvasLayer.visible == true:
			$"CanvasLayer/VBoxContainer/Continue".grab_focus()
		if Pressed:
			Engine.time_scale = 0.0  
		else:
			Engine.time_scale = 1.0 
			
func _physics_process(delta):
	if Input.is_action_just_pressed("Pause"):
		MenuShowing()


func ShowMenu():
	if Variables.PauseButton == true:
		$CanvasLayer.visible = true
		$"CanvasLayer/VBoxContainer/Continue".grab_focus()
		Engine.time_scale = 0.0  
	
	if Input.is_action_just_pressed("Back"):
		if Pressed == true: 
			Pressed = !Pressed  
			Variables.PauseButton = Pressed
			$CanvasLayer/VBoxContainer2.visible = false
			$CanvasLayer.visible = Pressed 
			
