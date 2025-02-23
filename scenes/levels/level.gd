extends Node2D

var test_array: Array[String] = ["Test", 'Hello', "Stuff"]

func _ready() -> void:
	$Logo.rotation_degrees = 90
	
	# print elements of array
	for i in test_array:
		print(i)
		
	print(test_array[0]) # access by index

func _process(delta: float) -> void:
	$Logo.rotation_degrees += 0.1
	
	# flow -> if rotation > 180 -> 0
	if $Logo.rotation_degrees > 180:
		$Logo.rotation_degrees = 0
		
	if $Logo.pos.x > 1000:
		$Logo.pos.x = 0
