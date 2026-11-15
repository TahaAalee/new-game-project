extends RigidBody2D
var hits = 0
var hits2 = 0
func _physics_process(delta: float) -> void:
	print(linear_velocity.y)
	print(hits)
	print(hits2)
	$"../Label".text = str(hits)
	$"../Label2".text = str(hits2)
	pass
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("pd1"):
		print("WE")
		$AudioStreamPlayer2D.play()
		hits += 1
 # Replace with function body.
	elif body.is_in_group("pd2"):
		print("WE")
		$AudioStreamPlayer2D.play()
		hits2 += 1
	linear_velocity.y -= 1500
