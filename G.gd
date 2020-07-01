extends KinematicBody2D

#var _velocity: = Vector2()
var _rng = RandomNumberGenerator.new
var _teleport_pos: = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	

func _process(delta):


func teleport_to():
	position = _teleport_pos
	while true:
		_teleport_pos.x = rng.randi(1, 100)
		_teleport_pos.y = rng.randi(1, 100)
		# yield()
	
