extends Area2D

func _on_Killbox_body_entered(body):
	get_tree().change_scene('res://Menus/Menu.tscn') #lose game
