extends Node3D
@export var menu : Control
@export var player : CharacterBody3D
@export var tabbed : StringName = &"tabbed"

func _ready() -> void:
	menu.hide()
	player.capture_mouse()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed(tabbed):
		if menu.visible:
			close_ui()
		else:
			open_ui()

func open_ui():
	menu.show()
	player.release_mouse()
	
func close_ui():
	menu.hide()
	player.capture_mouse()
