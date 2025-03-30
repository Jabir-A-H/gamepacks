extends RigidBody2D

var dragging = false  # Track if ball is being dragged
var original_gravity = 1.0  # Store original gravity scale

func _ready():
	original_gravity = gravity_scale  # Save the initial gravity

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed and (event.position - global_position).length() < 16:
				dragging = true
				freeze = true  # Stop physics while dragging
				gravity_scale = 0  # Disable gravity while dragging
			else:
				dragging = false
				freeze = false  # Resume physics
				gravity_scale = original_gravity  # Restore gravity

	if event is InputEventMouseMotion and dragging:
		global_position = lerp(global_position, event.position, 0.2)  # Smooth dragging
