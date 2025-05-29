extends NodeState

@export var player: CharacterBody2D
@export var animated_srpite_2d: AnimatedSprite2D

var direction: Vector2

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	if Input.is_action_pressed("walk_left"):
		direction = Vector2.LEFT
	elif Input.is_action_pressed("walk_right"):
		direction = Vector2.RIGHT
	elif Input.is_action_pressed("walk_up"):
		direction = Vector2.UP
	elif Input.is_action_pressed("walk_down"):
		direction = Vector2.DOWN
	else:
		direction = Vector2.ZERO
		
	if direction == Vector2.UP:
		animated_srpite_2d.play("idle_back")
	elif direction == Vector2.RIGHT:
		animated_srpite_2d.play("idle_right")	
	elif direction == Vector2.LEFT:
		animated_srpite_2d.play("idle_left")
	elif direction == Vector2.DOWN:
		animated_srpite_2d.play("idle_front")
	else:
		animated_srpite_2d.play("idle_front")			
	pass


func _on_next_transitions() -> void:
	pass


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
