extends Area2D
var deplacement = Vector2()
const VITESSE = 100
var direction = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	deplacement.x = VITESSE * delta * direction
	translate(deplacement)
	pass
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

