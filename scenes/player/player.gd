extends CharacterBody2D

const SPEED: int = 500

func _process(_delta: float):
	
	# input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	move_and_slide()
	
	# laser shooting input
	if Input.is_action_pressed("primary action"):
		print('shoot laser')
		
	# grenade shooting input
	if Input.is_action_pressed("secondary action"):
		print("shoot grenade")
