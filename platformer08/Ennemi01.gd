extends KinematicBody2D
const TERRE = Vector2(0,-1)
export (int ) var  vitesse = 50
var deplacement = Vector2()
const GRAVITE = 32
var direction_a_suivre = 1
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	print(direction_a_suivre)
	deplacement.x = vitesse * direction_a_suivre

	if direction_a_suivre == 1:
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("marche")
	else:
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("marche")

	deplacement.y += GRAVITE
	deplacement = move_and_slide(deplacement,TERRE )
	if  is_on_wall() and is_on_floor(): direction_a_suivre = direction_a_suivre * -1

