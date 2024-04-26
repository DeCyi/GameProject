extends Node

@onready var label = $Label
@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.start(10.0)

func time_left_to_go():
	var time_left = timer.time_left
	var minute = floor(time_left/ 60)
	var second = int(time_left) % 60
	return [minute, second]
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label.text = "%02d:%02d" % time_left_to_go()


func _on_timer_timeout():
	print("Game over")
