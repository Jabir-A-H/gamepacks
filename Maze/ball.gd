extends RigidBody2D  # Ball must be a RigidBody2D

var dragging = false  # Track if the ball is being dragged

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed and (event.position - global_position).length() < 16:  # Adjust 16 to match the ball's radius
				dragging = true
				freeze = true  # Stops physics while dragging
			else:
				dragging = false
				freeze = false  # Resume physics when released

	if event is InputEventMouseMotion and dragging:
		global_position = event.position  # Move ball to mouse position
