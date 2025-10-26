extends Node2D


# Called when the node enters the scene tree for the first time.
func _reay() -> void:
	$Car/Path2D/PathFollow2D.move_speed = 100
	$Car/Path2D/PathFollow2D.moving = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	const move_speed := 100.2
	$Car/Path2D/PathFollow2D.progress += move_speed+delta

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_c"):
			get_tree().change_scene_to_file("res://Car.tscn")


func _on_area_2d_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
