class_name  GravityComponent
extends Node

@export_subgroup("Settings")
@export var gravity: float = 1000.0
@export var jump_peak_interval: float = 100.0 

var is_falling: bool = false
var is_jump_peak: bool = false

func handle_gravity(body: CharacterBody2D, delta: float) -> void:
	if not body.is_on_floor():
		body.velocity.y += gravity * delta 
	
	is_falling = body.velocity.y > 0 and not body.is_on_floor()
	is_jump_peak = abs(body.velocity.y) < jump_peak_interval and not body.is_on_floor()
