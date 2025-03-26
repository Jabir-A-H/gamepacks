extends Label

@onready var button = $Button  # Get reference to the button

func _ready():
	button.pressed.connect(_on_button_pressed)  # Connect button signal

func _on_button_pressed():
	get_tree().change_scene_to_file("res://game_selection.tscn")  # Change to main.scene
