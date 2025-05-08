extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var map = [
		[1,1,1,1,0,0,0,1,1],
		[1,1,1,1,0,0,0,1,1],
		[1,1,1,1,0,0,0,1,1],
		[1,1,0,0,0,0,0,0,1],
		[1,1,0,0,0,0,0,0,0],
		[1,0,0,0,0,1,1,1,0],
		[1,0,0,1,1,1,1,1,1],
		[1,0,0,1,1,1,1,1,1],
		[1,0,0,1,1,1,1,1,1],
		[1,0,0,1,1,1,1,1,1],
		[1,0,0,0,1,1,1,1,0],
		[1,1,1,0,0,1,1,0,0],
		[1,1,1,1,0,1,1,0,0],
		[1,1,1,1,1,1,1,1,1]]
	#for i in 1:#14
	#	map.append([])
 	#	for j in 1: #9
	#		map[i].append(1)
	var x_pos
	var y_pos = 19
	for x in map:
		x_pos = -12
		for val in x:
			if(val == 1):
				var scene = preload("res://obsticole_static_body_3d.tscn")
				var instance = scene.instantiate()
				instance.global_position = Vector3(x_pos,y_pos,0)
				add_child(instance)	
			x_pos += 3
		y_pos -= 3
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
