extends CharacterBody2D

var sprite: Sprite2D
@onready var animation = $AnimationPlayer

func _process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 200
	move_and_slide()

	if direction == Vector2.ZERO:
		animation.play("Idle")
	else:
		animation.play("Run")

		if direction.x < 0:
			$Sprite2D.flip_h = true
		else:
			$Sprite2D.flip_h = false
