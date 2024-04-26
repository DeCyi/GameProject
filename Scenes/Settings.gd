extends PopupPanel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func show_settings(show_title := true) -> void:
	$PanelContainer.visible = show_title
	popup_centered()
