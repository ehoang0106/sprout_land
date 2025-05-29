extends NodeState

@export var player: Player
@export var animated_srpite_2d: AnimatedSprite2D


func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
		
	if player.play_direction == Vector2.UP:
		animated_srpite_2d.play("idle_back")
	elif player.play_direction == Vector2.RIGHT:
		animated_srpite_2d.play("idle_right")	
	elif player.play_direction == Vector2.LEFT:
		animated_srpite_2d.play("idle_left")
	elif player.play_direction == Vector2.DOWN:
		animated_srpite_2d.play("idle_front")
	else:
		animated_srpite_2d.play("idle_front")			
	


func _on_next_transitions() -> void:
	GameInputEvents.movement_input()
	if GameInputEvents.is_movement_input():
		transition.emit("Walk")
	pass


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	animated_srpite_2d.stop()
	pass
