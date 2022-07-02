extends Area2D

func _on_Goal_body_entered(body):
	if body is Player:
		get_tree().change_scene('res://Menus/Menu.tscn')
 #win game
