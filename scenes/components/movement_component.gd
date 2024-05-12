class_name MovementComponent
extends Node

@export_subgroup("Settings")
@export var speed: float = 300.0
@export var gound_accel_speed: float = 6.0
@export var ground_decel_speed: float = 8.0
@export var air_accel_speed: float = 10.0
@export var air_decel_speed: float = 3.0


func handle_horizontal_movement(body: CharacterBody2D, direction: float) -> void:
	var velocity_change_speed: float = 0.0
	if body.is_on_floor():
		if direction != 0:
			velocity_change_speed = gound_accel_speed
		else:
			velocity_change_speed = ground_decel_speed
	else:
		if direction != 0:
			velocity_change_speed = air_accel_speed
		else:
			velocity_change_speed = air_decel_speed
	
	body.velocity.x = move_toward(body.velocity.x, direction * speed, velocity_change_speed)


