extends CharacterBody2D

@onready var joystick = $"../Camera2D/Joystick"
@onready var thing =  get_node("../CanvasLayer/Button2")
@onready var friesStation = get_node("../CanvasLayer/FriesPanel")
@onready var burgerStation = get_node("../CanvasLayer/BurgerPanel")
@onready var joystick1 = get_node("../Camera2D/Joystick")
@onready var friesSprite = get_node("../CanvasLayer/FriesPanel/Fries2")
@onready var chickenStation = get_node("../CanvasLayer/ChickenPanel")
@onready var spaghettiStation = get_node("../CanvasLayer/SpaghettiPanel")
var panelClickable = false
var station = 0
var friesS = false
var burgerS = false

var SPEED = 800
var current_dir = "none"


func _physics_process(delta):
	var direction = joystick.posVector
	if direction:
		velocity = direction * SPEED
	else:
		velocity = Vector2(0,0)
	move_and_slide()
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		#play_anim(1)
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		#current_dir = "left"
		#play_anim(1)
		velocity.x = -SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		#play_anim(1)
		velocity.y = SPEED
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		current_dir = "up"
		#play_anim(1)
		velocity.y = -SPEED
		velocity.x = 0
	else:
		#play_anim(0)
		velocity.x = 0
		velocity.y = 0
	
func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		anim.flip_h = false
		if movement == 1:
			print("Right")
		elif movement == 0:
			print("Idle")
			
	if dir == "left":
		anim.flip_h = true
		if movement == 1:
			print("Left")
		elif movement == 0:
			anim.play("Idol")
			
	if dir == "down":
		anim.flip_h = true
		if movement == 1:
			print("Front")
		elif movement == 0:
			print("Front idle")
	
	if dir == "up":
		anim.flip_h = true
		if movement == 1:
			print("Back walk")
		elif movement == 0:
			print("Back idle")

func _on_area_2d_body_entered(body):
	panelClickable = true # Sets the bool to true
	thing.disabled = false
	station = 1
	print("ENTERED INTERACTION AREA")


func _on_area_2d_body_exited(body):
	thing.disabled = true
	station = 0
	print("LEAVING THE INTERACTION AREA")

func _on_button_2_pressed():
	checkforArea()

func friesStationClick():
	if panelClickable: 
		joystick1.visible = false
		friesStation.set_visible(true)
		friesSprite.texture = load ("res://436536779_365375952513275_469883746559072702_n.jpg")
		friesStation.position = Vector2(350, 150)
		panelClickable = false
		print("Hello")
	else:
		joystick1.visible = true
		friesStation.set_visible(false)
		friesSprite.texture = load ("res://436536779_365375952513275_469883746559072702_n.jpg")
		friesStation.position = Vector2(-1250,-300)
		panelClickable = true

		print("Waht")

func burgerStationClick():
	if panelClickable: 
		joystick1.visible = false
		burgerStation.set_visible(true)
		burgerStation.position = Vector2(350, 150)
		panelClickable = false
		print("Hello")
	else:
		joystick1.visible = true
		burgerStation.set_visible(false)
		burgerStation.position = Vector2(-1250,-300)
		panelClickable = true
		print("Waht")
	
func chickenStaitonClick():
	if panelClickable: 
		joystick1.visible = false
		chickenStation.set_visible(true)
		chickenStation.position = Vector2(350, 150)
		panelClickable = false
		print("Hello")
	else:
		joystick1.visible = true
		chickenStation.set_visible(false)
		chickenStation.position = Vector2(-1250,-300)
		panelClickable = true
		print("Waht")
		
func spaghettiStationClick():
	if panelClickable: 
		joystick1.visible = false
		spaghettiStation.set_visible(true)
		spaghettiStation.position = Vector2(350, 150)
		panelClickable = false
		print("Hello")
	else:
		joystick1.visible = true
		spaghettiStation.set_visible(false)
		spaghettiStation.position = Vector2(-1250,-300)
		panelClickable = true
		print("Waht")
func _on_burger_station_body_entered(body):
	panelClickable = true # Sets the bool to true
	thing.disabled = false # disable interaction button
	station = 2
	print("ENTERED INTERAC2TION AREA")


func _on_burger_station_body_exited(body):
	thing.disabled = true # enable  interaction button
	station = 0
	print("LEAVING THE IN2TERACTION AREA")
	
func checkforArea():
	match station:
		1:
			friesStationClick()
			print("You are at fries station")
		2:
			burgerStationClick()
			print("You are at burger station")
		3: 
			chickenStaitonClick()
			print("You are the chicken station")
		4:
			spaghettiStationClick()
			print("You are at the spag section")


func _on_area_2d_2_body_entered(body):
	panelClickable = true # Sets the bool to true
	thing.disabled = false # disable interaction button
	station = 3
	print("ENTERED INTERAC2T3ION AREA")


func _on_area_2d_2_body_exited(body):
	thing.disabled = true # enable  interaction button
	station = 0
	print("LEAVING THE IN2TERACTION AR3EA")


func _on_area_2d_3_body_entered(body):
	panelClickable = true # Sets the bool to true
	thing.disabled = false # disable interaction button
	station = 4
	print("ENTERED INTERAC2T3ION AREA")


func _on_area_2d_3_body_exited(body):
	thing.disabled = true # enable  interaction button
	station = 0
	print("LEAVING THE IN2TERACTION AR3EA")
