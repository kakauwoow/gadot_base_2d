extends Area2D

var travelled_distance = 0

func _physics_process(delta: float) -> void:
	const SPEED =1000
	const RANGE = 1200
	var diraction =Vector2.RIGHT.rotated(rotation)
	position+= diraction * SPEED *delta
	travelled_distance+= SPEED * delta
	if travelled_distance > RANGE:
		queue_free()
			
	


func _on_body_entered(body: Node2D) -> void:
	queue_free()
	if body.has_method("take_damege"):
		body.take_damege() 
