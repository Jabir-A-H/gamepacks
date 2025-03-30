extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play()
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names()) #sets an array called "mob_types" with a list of items that are the names of the animations
	$AnimatedSprite2D.animation = mob_types.pick_random() #picks a random mod type from the array



func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
