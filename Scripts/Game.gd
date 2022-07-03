extends Node2D

var amount_chunks: int = 5
var current_amount: int = 0

var chunks: Array
const end = preload("res://Scenes/Chunks/ChunkEnd.tscn")

func _ready():
	randomize()
	
	for i in range(1, 14):
		chunks.append(load("res://Scenes/Chunks/Chunk" + str(i) + ".tscn"))
		
	for _i in range(3):
		load_chunk()

func load_chunk():
	if amount_chunks >= current_amount:
		var chunk
		if amount_chunks == current_amount:
			chunk = end.instance()
		else:
			chunk = chunks[1].instance()
		add_child(chunk)
		chunk.set_position(Vector2(34 * 18 * current_amount, 10))
		current_amount += 1

