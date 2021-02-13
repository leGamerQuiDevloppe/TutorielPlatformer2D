extends KinematicBody2D
const TERRE = Vector2(0,-1)
export (int ) var  vitesse = 96
var deplacement = Vector2()
const GRAVITE = 32
const PUISSANCE_DU_SAUT = -352
var pied_a_terre = true
const PROJECTILE  = preload("res://Projectile.tscn")

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		deplacement.x = vitesse
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("marche")
	elif Input.is_action_pressed("ui_left"):
			deplacement.x = -vitesse
			$AnimatedSprite.play("marche")
			$AnimatedSprite.flip_h = true
	else: 
		deplacement.x = 0
		$AnimatedSprite.play("arret")
		
	if Input.is_action_pressed("ui_up") and pied_a_terre:
			deplacement.y = PUISSANCE_DU_SAUT
			$AnimatedSprite.play("saut")
			pied_a_terre = false
	if Input.is_action_just_pressed("ui_focus_next"):
		var proj = PROJECTILE.instance()
		proj.position = $Position2D.global_position
		get_parent().add_child(proj)
		$Camera2D.zoom.x *= 1.05
		$Camera2D.zoom.y *= 1.05 
		
		
		
		
	
		
	if is_on_floor() :
		 pied_a_terre = true
	deplacement.y += GRAVITE
	deplacement = move_and_slide(deplacement,TERRE )

