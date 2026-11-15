extends CharacterBody2D

var hits = 0


func _physics_process(delta: float) -> void:
	var input_dir = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = input_dir * 1200
	move_and_slide()
	$"../Label".text = str(hits)
