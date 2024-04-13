extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_menu_pressed():
	get_tree().paused = false # Pauses the game 
	get_tree().change_scene_to_file("res://Scenes/Main.tscn") # Switches to Main Menu



func _on_resume_pressed():
	get_tree().paused = false # Unpauses the game
	$PauseMenu.visible = false # Hides pause menu
	$Button.visible = true # Makes pause button visible again


func _on_button_pressed():
	$PauseMenu.visible = true # Shows pause menu
	$Button.visible = false # Hides the pause button
	get_tree().paused = true # Pauses the game
