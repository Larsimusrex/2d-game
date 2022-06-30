extends Node



func _on_StartButton_pressed():
	get_tree().change_scene('res://Scenes/Game.tscn')


func _on_OptionsButton_pressed():
	get_tree().change_scene('res://Menus/OptionsMenu.tscn')


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_Back_pressed():
	get_tree().change_scene('res://Menus/Menu.tscn')
	
