extends Area2D

#var _velocity: = Vector2()
var _rng: = RandomNumberGenerator.new()
var _teleport_pos: = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	position = _teleport_pos

func _process(delta):
	pass




func _get_pos():
	while true:
		_teleport_pos.x = _rng.randi_range(1, 100)
		_teleport_pos.y = _rng.randi_range(1, 100)
		# yield()
