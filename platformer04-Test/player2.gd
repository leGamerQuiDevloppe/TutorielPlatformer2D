extends KinematicBody2D
const UP = Vector2(0,-1)
const GRAVITE = 20
export (int ) var  vitesse = 100
var deplacement = Vector2()


func _ready():
	pass # Replace with function body.
	

func _process_physics(delta):
	deplacement.y += GRAVITE
	if Input.is_action_pressed("ui_right"):
		deplacement.x = vitesse
		$AnimatedSprite.play("walk")
	if Input.is_action_pressed("ui_left"):
		deplacement.x = -vitesse
		$AnimatedSprite.play("marche")
	deplacement = move_and_slide(deplacement,UP )
	pass
	
