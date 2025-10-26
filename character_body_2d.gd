extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(_delta: float) -> void:
	var input_vector = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1
		$Player.play("Up")
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
		$Player.play("Down")
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
		$Player.play("Left")
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
		$Player.play("Right")
	if Input.is_action_pressed("ui_s"):
		velocity = input_vector * 1000
	else:
		velocity = input_vector * 100
	
	move_and_slide()
