extends Node2D

var amount_chunks: int = 8
var current_amount: int = 0
var loaded_chunks: int = 6
#var current_height: float = 0

var chunks: Array
var last_chunks: Array
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
			chunk = chunks[randi() % 13].instance()
		add_child(chunk)
		#current_height += chunk.start_height
		#print(current_height, chunk.start_height)
		#if current_amount > 0: current_height 
		chunk.set_position(Vector2(34 * 18 * current_amount, 0))
		last_chunks.push_front(chunk)
		if last_chunks.size() > loaded_chunks:
			remove_child(last_chunks.pop_back())
		current_amount += 1

