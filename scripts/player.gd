extends CharacterBody2D

@export_subgroup("Nodes")
@export var animation_component: AnimationComponent
@export var input_component: InputComponent
@export var gravity_component: GravityComponent
@export var movement_component: MovementComponent
@export var jump_component: AdvancedJumpComponent


func _physics_process(delta: float) -> void:
	gravity_component.handle_gravity(self, delta)
	movement_component.handle_horizontal_movement(self, input_component.input_horizontal)
	jump_component.handle_jump(self, input_component.get_jump_input(), input_component.get_jump_input_release())
	animation_component.handle_move_animation(input_component.input_horizontal)
	animation_component.handle_jump_animation(gravity_component.is_jump_peak, jump_component.is_going_up, gravity_component.is_falling)
	
	move_and_slide()
	
