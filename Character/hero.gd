extends CharacterBody2D
var sprite: Sprite2D
@onready var animation = $AnimationPlayer
func _process (_delta):
	
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 300
	move_and_slide()
	if (direction == Vector2.LEFT):
		$Sprite2D.flip_h = true
	elif (direction == Vector2.RIGHT):
		$Sprite2D.flip_h = false
	elif (direction==Vector2.ZERO):
		animation.play("Idle")
