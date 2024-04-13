extends CharacterBody2D

@onready var joystick = $"../Camera2D/Joystick"
@onready var thing =  get_node("../CanvasLayer/Button2")
@onready var thing2 = get_node("../CanvasLayer/Panel")
@onready var lester = get_node("../Camera2D/Joystick")
var panelClickable = false

var speed = 1200

func _physics_process(delta):
	var direction = joystick.posVector
	if direction:
		velocity = direction * speed
	else:
		velocity = Vector2(0,0)
	move_and_slide()
	


func _on_area_2d_body_entered(body):
	panelClickable = true # Sets the bool to true
	thing.disabled = false
	print("ENTERED INTERACTION AREA")


func _on_area_2d_body_exited(body):
	thing.disabled = true
	print("LEAVING THE INTERACTION AREA")


func checkForArea():
	pass


func _on_button_2_pressed():
	if panelClickable: 
		lester.visible = false
		thing2.set_visible(true)
		thing2.position = Vector2(350, 150)
		panelClickable = false
		print("Hello")
	else:
		lester.visible = true
		thing2.set_visible(false)
		panelClickable = true
		print("Waht")
