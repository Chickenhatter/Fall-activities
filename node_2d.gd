extends Node2D
var p = false
var u = false
var m = false
var q = false
var k = false
var i = false
var n = false
var Truth = false
var leafblower = false

#The Movement of paths
func _reay() -> void:
	$Leaves/Path2D/PathFollow2D.move_speed =1.0
	$Leaves/Path2D/PathFollow2D.moving = true
	$"Leaf blower/Path2D/PathFollow2D".move_speed =1.0
	$"Leaf blower/Path2D/PathFollow2D".moving = true
	$"Let us leaf/Path2D/PathFollow2D".move_speed = 1.0
	$"Let us leaf/Path2D/PathFollow2D".moving = true
func _process(delta: float) -> void:
	const move_speed := 100
	#$Leaves/Path2D/PathFollow2D.progress += move_speed+delta
	$"Leaf blower/Path2D/PathFollow2D".progress += move_speed+delta
	$"Let us leaf/Path2D/PathFollow2D".progress += move_speed+delta
	
	if leafblower == true:
		if p == true:
			if u == true:
				if m == true:
					if q == true:
						if k == true:
							if i  == true:
								if n == true:
									$Player/CharacterBody2D/Leafblow.play("full")
								else:
									pass
							else:
								pass
						else:
							pass
					else:
						pass
				else:
					pass
			else:
				pass
		else:
			pass
	else:
		pass
#func _on_leaf_body_entered(body: Node2D) -> void:
	#if body is CharacterBody2D:
		#if Input.is_action_pressed("ui_f"):
			#$Leaves/Path2D/PathFollow2D/Leaf/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
			#$Leaves/Path2D/PathFollow2D.progress_ratio = 1.0

#func _on_leaf_body_exited(body: Node2D) -> void:
	#if body is CharacterBody2D:
		#if Input.is_action_pressed("ui_f"):
			#$Leaves/Path2D/PathFollow2D/Leaf/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
			#$Leaves/Path2D/PathFollow2D.progress_ratio = 1.0
		


func _on_leafblower_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_f"):
			$"Leaf blower/AnimatedSprite2D".play("Non")
			$Player/CharacterBody2D/Leafblow.play("Leafblow")
			$Player/CharacterBody2D/Path2D/PathFollow2D.progress_ratio = 1.0
			leafblower = true
		elif Input.is_action_pressed("ui_e"):
			leafblower = false
			$Player/CharacterBody2D/Leafblow.play("Non")
			if p == true:
				if u == true:
					if m == true:
						if q == true:
							if k == true:
								if i  == true:
									if n == true:
										$"Leaf blower/AnimatedSprite2D".play("full")
									else:
										$"Leaf blower/AnimatedSprite2D".play("Leafblow")
								else:
									$"Leaf blower/AnimatedSprite2D".play("Leafblow")
							else:
								$"Leaf blower/AnimatedSprite2D".play("Leafblow")
						else:
							$"Leaf blower/AnimatedSprite2D".play("Leafblow")
					else:
						$"Leaf blower/AnimatedSprite2D".play("Leafblow")
				else:
					$"Leaf blower/AnimatedSprite2D".play("Leafblow")
			else:
				$"Leaf blower/AnimatedSprite2D".play("Leafblow")
				
			$Player/CharacterBody2D/Path2D/PathFollow2D.progress_ratio = 0.0

func _on_leafblower_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_f"):
			$"Leaf blower/AnimatedSprite2D".play("Zno Leafblower")
			$Player/CharacterBody2D/Leafblow.play("Leafblow")
			$Player/CharacterBody2D/Path2D/PathFollow2D.progress_ratio = 1.0
		elif Input.is_action_pressed("ui_e"):
			$"Leaf blower/AnimatedSprite2D".play("Leafblower")
			$Player/CharacterBody2D/Leafblow.play("Non")
			$Player/CharacterBody2D/Path2D/PathFollow2D.progress_ratio = 0.0


func _on_leaf_2_body_entered(body: Node2D) -> void:
	if leafblower == true:
		p = true
		$Leaves/Path2D2/PathFollow2D/Leaf2/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
		$Leaves/Path2D2/PathFollow2D.progress_ratio = 1.0
func _on_leaf_3_body_entered(body: Node2D) -> void:
	if leafblower == true:
		$Leaves/Path2D3/PathFollow2D/Leaf3/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
		$Leaves/Path2D3/PathFollow2D.progress_ratio = 1.0
		u = true
func _on_leaf_4_body_entered(body: Node2D) -> void:
	if leafblower == true:
		$Leaves/Path2D4/PathFollow2D/Leaf4/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
		$Leaves/Path2D4/PathFollow2D.progress_ratio = 1.0
		m = true
func _on_leaf_5_body_entered(body: Node2D) -> void:
	if leafblower == true:
		$Leaves/Path2D5/PathFollow2D/Leaf5/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
		$Leaves/Path2D5/PathFollow2D.progress_ratio = 1.0
		q = true
func _on_leaf_6_body_entered(body: Node2D) -> void:
	if leafblower == true:
		$Leaves/Path2D6/PathFollow2D/Leaf6/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
		$Leaves/Path2D6/PathFollow2D.progress_ratio = 1.0
		k = true
func _on_leaf_7_body_entered(body: Node2D) -> void:
	if leafblower == true:
		$Leaves/Path2D7/PathFollow2D/Leaf7/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
		$Leaves/Path2D7/PathFollow2D.progress_ratio = 1.0
		i = true
func _on_leaf_1_body_entered(body: Node2D) -> void:
	if leafblower == true:
		$Leaves/Path2D/PathFollow2D/Leaf1/CollisionShape2D/AnimatedSprite2D.play("No_leaf")
		$Leaves/Path2D/PathFollow2D.progress_ratio = 1.0
		n = true
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_c"):
			get_tree().change_scene_to_file("res://Car.tscn")
