extends Control

# Path to save the leaderboard data
const LEADERBOARD_SAVE_PATH = "user://leaderboard.save"

# Array to store the leaderboard data
var leaderboard = []

func _ready():
	load_leaderboard()
	update_score_list()
	$VBoxContainer/BackButton.connect("pressed", Callable(self, "_on_BackButton_pressed"))

# Load the leaderboard from the save file
func load_leaderboard():
	var file = FileAccess.open(LEADERBOARD_SAVE_PATH, FileAccess.READ)
	if file:
		leaderboard = file.get_var()
		file.close()

# Save the leaderboard to the save file
func save_leaderboard():
	var file = FileAccess.open(LEADERBOARD_SAVE_PATH, FileAccess.WRITE)
	file.store_var(leaderboard)
	file.close()

# Update the score list UI
func update_score_list():
	var score_list = $VBoxContainer/ScoreList
	# Clear existing children
	for child in score_list.get_children():
		child.queue_free()
	# Add updated leaderboard entries
	for entry in leaderboard:
		var hbox = HBoxContainer.new()
		var rank_label = Label.new()
		rank_label.text = str(entry["rank"])
		hbox.add_child(rank_label)
		var name_label = Label.new()
		name_label.text = entry["name"]
		hbox.add_child(name_label)
		var score_label = Label.new()
		score_label.text = str(entry["score"])
		hbox.add_child(score_label)
		var date_label = Label.new()
		date_label.text = entry["date"]
		hbox.add_child(date_label)

		if entry["new"]:
			hbox.modulate = Color(1, 1, 0)  # Highlight new high scores in yellow
			entry["new"] = false

		score_list.add_child(hbox)
# Add a new score to the leaderboard
func add_score(player_name, score):
	var datetime = Time.get_datetime_dict_from_system()
	var date = "%04d-%02d-%02d %02d:%02d:%02d" % [datetime.year, datetime.month, datetime.day, datetime.hour, datetime.minute, datetime.second]
	leaderboard.append({"rank": 0, "name": player_name, "score": score, "date": date, "new": true})
	leaderboard.sort_custom(Callable(self, "_sort_scores"))
	leaderboard = leaderboard.slice(0, 10)  # Keep only top 10 scores
	update_ranks()
	save_leaderboard()
	update_score_list()

# Custom sort function for sorting scores in descending order
func _sort_scores(a, b):
	return a["score"] > b["score"]

# Update the ranks after sorting
func update_ranks():
	for i in range(leaderboard.size()):
		leaderboard[i]["rank"] = i + 1

# Check if the given score qualifies for the leaderboard (top 10 or 20)
func is_top_score(score: int) -> bool:
	# If the leaderboard has fewer than 10 entries, any score qualifies
	if leaderboard.size() < 10:
		return true
	# Check if the score is higher than the lowest score on the leaderboard
	return score > leaderboard[-1]["score"]

func _on_back_button_pressed() -> void:
	self.visible = false

func _unhandled_input(event):
	# Consume all input events while the leaderboard is visible
	if self.visible:
		event.accept()  # Prevent input from propagating to the game
