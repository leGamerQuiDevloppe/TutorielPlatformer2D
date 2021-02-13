extends Area2D
var deplacement = Vector2()
const VITESSE = 100

func _ready():

	pass # Replace with function body.
func _physics_process(delta):
	deplacement.x = VITESSE * delta
	translate(deplacement)
