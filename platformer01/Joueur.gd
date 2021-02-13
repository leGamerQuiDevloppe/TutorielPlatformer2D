extends KinematicBody2D
var deplacement = Vector2()
export var vitesse = 120
export var gravite = 9
export var saut = -600
func _input(event):
	pass

func _physics_process(delta):
	deplacement.y += gravite
	if Input.is_action_pressed("ui_right"):
		deplacement.x = vitesse
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		deplacement.x = - vitesse
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = true
	elif Input.is_action_just_pressed("ui_up"):
		deplacement.y = saut
	else :
			deplacement.x = 0
			$AnimatedSprite.play("idle")
	move_and_slide(deplacement)
