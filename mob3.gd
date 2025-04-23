extends CharacterBody2D
var health = 3
@onready var  player = get_node("/root/game/player")



func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 150.0
	move_and_slide()
	
func take_damege():
		health-= 1
		
		if health == 0:
			queue_free()
		
		
