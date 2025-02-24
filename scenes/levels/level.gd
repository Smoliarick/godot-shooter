extends Node2D

var test_array: Array[String] = ["Test", 'Hello', "Stuff"]

func _ready() -> void:
	$Logo.rotation_degrees = 90
	
	# print elements of array
	for i in test_array:
		print(i)
		
	print(test_array[0]) # access by index

func _process(delta: float) -> void:
	$Logo.rotation_degrees += 100 * delta
		
	if $Logo.position.x > 1000:
		$Logo.pos.x = 0
