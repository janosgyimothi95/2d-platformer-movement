class_name AnimationComponent
extends Node

@export_subgroup("Nodes")
@export var sprite: AnimatedSprite2D

func handle_horizontal_flip(move_dir: float) -> void:
	if move_dir == 0:
		return
	
	sprite.flip_h = false if move_dir > 0 else true
	
	
func handle_move_animation(move_dir: float) -> void:
	handle_horizontal_flip(move_dir)
	
	if move_dir != 0:
		sprite.play("run")
	else:
		sprite.play("idle")


func handle_jump_animation(is_on_jump_peak: bool, is_jumping: bool, is_falling: bool) -> void:
	if is_on_jump_peak:
		sprite.play("jump_peak")
	elif is_jumping:
		sprite.play("jump")
	elif is_falling:
		sprite.play("fall")
