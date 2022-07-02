extends Node

func _on_startbtn_pressed():
	get_tree().change_scene('res://Scenes/Game.tscn')


func _on_optionsbtn_pressed():
	get_tree().change_scene('res://Menus/OptionsMenu.tscn')


func _on_quitbtn_pressed():
	get_tree().quit()


func _on_exitbtn_pressed():
	get_tree().change_scene('res://Menus/Menu.tscn')



