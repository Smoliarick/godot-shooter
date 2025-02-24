extends Node2D

const speed: int = 200

func _process(delta):
	
	# input
	var direction = Input.get_vector("left", "right", "up", "down")
	position += direction * speed * delta
	
	# laser shooting input
	if Input.is_action_pressed("primary action"):
		print('shoot laser')
		
	# grenade shooting input
	if Input.is_action_pressed("secondary action"):
		print("shoot grenade")
