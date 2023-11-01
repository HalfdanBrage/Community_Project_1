extends state

func on_state_entered():
	player.change_animation("fall")

func _physics_process(delta):
	if player.is_on_floor():
		state_machine.change_to_state("Idle")
		
	player.animations.flip_h = player.dir.x != 1
	player.velocity.x += player.aerial_speed * player.dir.x * delta
