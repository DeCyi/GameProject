extends Panel

var timerEnded = false
@onready var timer = $Sugona
@onready var button = get_node("FriesPanel/Button")
@onready var text = $MarginContainer/GridContainer/Label


var buttonclicks = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	pass


func _on_butdton_pressed():
	buttonclicks+=1
	print("Cooking fries")
	
	'if buttonclicks >= 6: #Code Disabled since it doesnt function well as of now
		$Fries2.texture = load("res://436536779_365375952513275_469883746559072702_n.jpg")
		print(buttonclicks)
	elif buttonclicks == 7:
		$Fries2.texture = load("res://436449991_1637178373719473_8092390020716804904_n.jpg")
	else:
		print(buttonclicks)'
	# Life Saver Moment
	match(buttonclicks):
		1:
			$Fries2.texture = load("res://436536779_365375952513275_469883746559072702_n.jpg")
			print(buttonclicks)
		2:
			$Fries2.texture = load("res://436536779_365375952513275_469883746559072702_n.jpg")
			print(buttonclicks)
		3:
			$Fries2.texture = load("res://436536779_365375952513275_469883746559072702_n.jpg")
			print(buttonclicks)
		4:
			$Fries2.texture = load("res://436536779_365375952513275_469883746559072702_n.jpg")
			print(buttonclicks)
		5:
			$Fries2.texture = load("res://436536779_365375952513275_469883746559072702_n.jpg")
			print(buttonclicks)
		6:
			$Fries2.texture = load("res://436449991_1637178373719473_8092390020716804904_n.jpg")
			print(buttonclicks)
		7:
			$Fries2.texture = load("res://436588554_791439782512481_3619868536547009772_n.jpg")
			print(buttonclicks)
		8:
			$Fries2.texture = load("res://436588554_791439782512481_3619868536547009772_n.jpg")
			print(buttonclicks)
		9:
			$Fries2.texture = load("res://436588554_791439782512481_3619868536547009772_n.jpg")
			print(buttonclicks)
		10:
			$Fries2.texture = load("res://436588554_791439782512481_3619868536547009772_n.jpg")
			print(buttonclicks)
