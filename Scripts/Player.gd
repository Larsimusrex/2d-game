class_name Player
extends KinematicBody2D

#parameters
export var gravity: float
export var max_speed: float
export var accerleration: float
export var jump_force: float

#internal variables
var velocity: Vector2 = Vector2.ZERO
var load_next: float = 18 * 34

func _physics_process(delta):
	if Input.is_action_pressed('left'):
		if velocity.x > -max_speed:
			velocity.x -= accerleration * delta
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Walk")
		
	elif Input.is_action_pressed("right"):
		if velocity.x < max_speed:
			velocity.x += accerleration * delta
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Walk")
		
	else:
		velocity.x = 0
		$AnimatedSprite.play("Idle")
		
	if Input.is_action_pressed('jump') and is_on_floor():
		velocity.y = jump_force
	
	velocity.y += gravity*delta
	velocity = move_and_slide(velocity, Vector2.UP)

func _process(_delta):
	if position.x > load_next:
		print("new chunk")
		get_tree().root.get_node("Game").load_chunk()
		load_next += 34 * 18
