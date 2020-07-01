extends Area2D

var _velocity: = Vector2()
var rng = RandomNumberGenerator.new


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	while true:
		

func _process(delta):
	while true:
		_velocity.x = rng.randi() 
		yield(get_tree().create_timer(5),"timeout")
