extends CharacterBody3D

const SPEED = 5.0

func _physics_process(delta: float) -> void:
	if position.x >= 10:
		velocity.x = -SPEED
	else:
		if position.x <= -10:
			velocity.x = SPEED

	move_and_slide()
