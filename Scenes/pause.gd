extends Control


# add_child(scene)



# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass	


func _on_button_pressed():
	get_tree().quit() # Game exit


func _on_menu_pressed():
	get_tree().paused = false # Changes the boolean into false unpausing the game on the process
	get_tree().change_scene_to_file("res://Scenes/Main.tscn") # Switches to Main Menu scene


func _on_resume_pressed():
	pass

