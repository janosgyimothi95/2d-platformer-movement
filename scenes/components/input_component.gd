class_name InputComponent
extends Node

var input_horizontal: float = 0.0

func _process(_delta) -> void:
	input_horizontal = Input.get_axis("move_left", "move_right")
	
func get_jump_input() -> bool:
	return Input.is_action_just_pressed("jump")
	
func get_jump_input_release() -> bool:
	return Input.is_action_just_released("jump")
