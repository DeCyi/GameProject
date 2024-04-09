extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _input(event):
	''' if event is InputEventMouseButton:
		if event.is_pressed():
			is_dragging = true
		else:
			is_dragging = false
			$Sprite2D.global_position = event.position '''
			
	look_at(get_global_mouse_position())
	velocity = transform.x * Input.get_axis("down", "up") * speed
	
	'''if event is InputEventScreenDrag:
		if event.is_pressed():
			is_dragging = true
		else:
			is_dragging = false
			$Sprite2D.global_position = event.position'''

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
