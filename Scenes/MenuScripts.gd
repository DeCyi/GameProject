extends Control





# Called when the node enters the scene tree for the first time.
func _ready():
	Audio.play_music("res://Audio/sample.mp3")
	some_function()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

	

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/stage1.tscn")
	
func _on_settings_pressed() -> void:
	pass

func _on_leaderboard_pressed() -> void:
	pass
	#get_tree().change_scene_to_file()

func _on_button_pressed() -> void:
	get_tree().quit()

func some_function():
	print("start")
	await get_tree().create_timer(5.0).timeout
	print("end")









