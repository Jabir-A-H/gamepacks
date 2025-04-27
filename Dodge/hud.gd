extends CanvasLayer

# Notifies `Main` node that the button has been pressed
signal start_game
signal show_settings
signal show_help
signal show_leaderboard

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()

func show_game_over():
	show_message("Game Over")
	# Wait until the MessageTimer has counted down.
	await $MessageTimer.timeout

	$Message.text = "Dodge the Creeps!"
	$Message.show()
	# Make a one-shot timer and wait for it to finish.
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()

func update_score(score):
	$ScoreLabel.text = str(score)

func _on_start_button_pressed():
	$StartButton.hide()
	start_game.emit()

func _on_message_timer_timeout():
	$Message.hide()


func _on_settings_button_pressed() -> void:
	show_settings.emit()  

func _on_help_button_pressed() -> void:
	show_help.emit()

func _on_leaderboard_button_pressed() -> void:
	show_leaderboard.emit()
