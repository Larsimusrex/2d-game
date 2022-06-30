extends Node2D

const chunk_1 = preload('res://Scenes/Chunks/Chunk1.tscn')
const chunk_2 = preload('res://Scenes/Chunks/Chunk2.tscn')
const chunk_3 = preload('res://Scenes/Chunks/Chunk3.tscn')
const chunk_4 = preload('res://Scenes/Chunks/Chunk4.tscn')
const chunk_5 = preload('res://Scenes/Chunks/Chunk5.tscn')
const chunk_6 = preload('res://Scenes/Chunks/Chunk6.tscn')
const chunk_7 = preload('res://Scenes/Chunks/Chunk7.tscn')
const chunk_8 = preload('res://Scenes/Chunks/Chunk8.tscn')
const chunk_9 = preload('res://Scenes/Chunks/Chunk9.tscn')
const chunk_10 = preload('res://Scenes/Chunks/Chunk10.tscn')
const chunk_11 = preload('res://Scenes/Chunks/Chunk11.tscn')
const chunk_12 = preload('res://Scenes/Chunks/Chunk12.tscn')
const chunk_13 = preload('res://Scenes/Chunks/Chunk13.tscn')
const chunk_14 = preload('res://Scenes/Chunks/Chunk14.tscn')
const chunk_End = preload('res://Scenes/Chunks/ChunkEnd.tscn')

func _on_Area2D_body_entered(body):
	get_tree().change_scene('res://Menus/Menu.tscn')



func _on_Goal_body_entered(body):
	if body is Player:
		get_tree().change_scene('res://Menus/Menu.tscn')

func _ready():
	pass
	
	
