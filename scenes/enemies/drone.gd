extends CharacterBody2D

const SPEED = 100.0

func _process(delta: float) -> void:
	# direction
	var direction = Vector2.RIGHT
	
	# velocity
	velocity = direction * SPEED
	
	# move and slide
	move_and_slide()
