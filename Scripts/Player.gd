class_name Player
extends KinematicBody2D

#parameters
export var gravity: float
export var speed: float
export var jump_force: float

#internal variables
var velocity = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed('left'):
		velocity.x = -speed
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Walk")
		
	elif Input.is_action_pressed("right"):
		velocity.x = speed
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Walk")
		
	else:
		velocity.x = 0
		$AnimatedSprite.play("Idle")
		
	if Input.is_action_pressed('jump') and is_on_floor():
		velocity.y = jump_force
	
	velocity.y += gravity*delta
	velocity = move_and_slide(velocity, Vector2.UP)
