extends CharacterBody2D

var hits = 0

func _physics_process(delta: float) -> void:
	var input_dir = Input.get_vector("action a","action d","action w","action s")
	velocity = input_dir * 1200
	move_and_slide() 
	$"../Label".text = str(hits)
