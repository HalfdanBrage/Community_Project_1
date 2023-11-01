extends state


func on_state_entered():
	player.change_animation("move")


func _physics_process(delta):
	if !player.dir:
		state_machine.change_to_state("Idle")
	if Input.is_action_just_pressed("jump"):
		state_machine.change_to_state("Jump")
		
	player.animations.flip_h = player.dir.x != 1
	player.velocity.x += player.speed * player.dir.x * delta
