extends RigidBody3D

var end_scene = preload("res://Askout_node_2d.tscn").instantiate()
var goal_speed
var launched = false
var tracking = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("init")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#linear_velocity = linear_velocity.clamp(Vector3(-10000,-10000,-10000), Vector3(10000,10000,10000))
	pass

func _input(event):
	if event is InputEventMouseButton:
		var mouse_pos = get_viewport().get_mouse_position()
		mouse_pos.x = mouse_pos.x - get_viewport().size.x / 2
		mouse_pos.y = mouse_pos.y - 62
		
		if(event.is_pressed()):
			print("clicked")
			if(-25 < mouse_pos.x && mouse_pos.x < 25):
				if (-62 < mouse_pos.y && mouse_pos.y < 25):
					print("tracking")
					tracking = true
	
		else:
				if(event.is_released() && tracking):
					print("launch")
					tracking = false
					
					linear_velocity.x = mouse_pos.x / 5 
					linear_velocity.y = mouse_pos.y / 5 
					
					set_deferred("freeze", false)
					launched = true


func _on_deadzone_area_3d_body_entered(body: Node3D) -> void:
	print("lost")
	get_tree().root.add_child(end_scene)
	queue_free()
	pass # Replace with function body.
