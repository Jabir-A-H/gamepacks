extends Label

func _ready():
	var button1 = $GridContainer/Button1  # Get reference to the button
	var button2 = $GridContainer/Button2
	var button3 = $GridContainer/Button3
	var button4 = $GridContainer/Button4
	var button5 = $GridContainer/Button5
	var button6 = $GridContainer/Button6

	
	button1.pressed.connect(_on_button1_pressed)  # Connect button signal
	button2.pressed.connect(_on_button2_pressed)
	button3.pressed.connect(_on_button3_pressed)
	button4.pressed.connect(_on_button4_pressed)
	button5.pressed.connect(_on_button5_pressed)
	button6.pressed.connect(_on_button6_pressed)
	
func _on_button1_pressed():
	get_tree().change_scene_to_file("res://Maze/Ball and Wall.tscn")  # Change to main.scene
func _on_button2_pressed():
	get_tree().change_scene_to_file("res://Platformer/moving_icon.tscn")
func _on_button3_pressed():
	get_tree().change_scene_to_file("res://Dodge/main.tscn")
func _on_button4_pressed():
	get_tree().change_scene_to_file("res://game_selection.tscn")
func _on_button5_pressed():
	get_tree().change_scene_to_file("res://game_selection.tscn")
func _on_button6_pressed():
	get_tree().change_scene_to_file("res://game_selection.tscn")
