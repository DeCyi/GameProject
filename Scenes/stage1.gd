extends Node2D

@export var speed = 400
@onready var animation_eto = $AnimatedSprite2D
# @onready var animatedSprite = 
var paused

var is_dragging = false
var touchpos = 0

func _input(event):
	''' if event is InputEventMouseButton:
		if event.is_pressed():
			is_dragging = true
		else:
			is_dragging = false
			$Sprite2D.global_position = event.position '''
			
	
	
	if event is InputEventScreenDrag:
		if event.is_pressed():
			is_dragging = true
			animation_eto.play("animation")
		else:
			is_dragging = false
			$Sprite2D.global_position = event.position
			
			
	
			
# Called when the node enters the scene tree for the first time.
func _ready():
	Audio.stop_music()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_collision_shape_2d_draw():
	pass # Replace with function body.


func _on_button_pressed():
	$PauseMenu.set_visible(true)
	$Button.set_visible(false)
	get_tree().paused = true
	
	

	
func resumegame():	
	get_tree().paused = false
	$PauseMenu.set_visibile(false)
	$Button.set_visibile(true)


func _on_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")


func _on_resume_pressed():
	get_tree().paused = false
	$PauseMenu.visible = false
	$Button.visible = true
