extends KinematicBody2D

var speed = 20
var velocity = Vector2()
export var direction = -1

func _ready():
	if direction == 1:
		$AnimatedSprite.flip_h = true
	
	$detect_edge.position.x = $CollisionShape2D.shape.get_extents().x * direction


func _physics_process(delta):
	
	if is_on_wall() or not $detect_edge.is_colliding() and is_on_floor():
		direction = direction * -1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		$detect_edge.position.x = $CollisionShape2D.shape.get_extents().x * direction
	
	velocity.y += 20
	
	velocity.x = speed * direction
	
	velocity = move_and_slide(velocity,Vector2.UP)
	
	


func _on_top_checker_body_entered(body):
	$AnimatedSprite.play('squashed')
	speed = 0
	set_collision_layer_bit(2,false)
	set_collision_mask_bit(0,false)
	$top_checker.set_collision_layer_bit(2,false)
	$top_checker.set_collision_mask_bit(0,false)
	$sides_checker.set_collision_layer_bit(2,false)
	$sides_checker.set_collision_mask_bit(0,false)
	$Timer.start()

func _on_Timer_timeout():
	queue_free()



func _on_sides_checker_body_entered(body):
	get_tree().change_scene('res://Menus/Menu.tscn')
	
	

