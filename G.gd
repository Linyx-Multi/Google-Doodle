extends KinematicBody2D

var _pos: = Vector2()
var rng = RandomNumberGenerator.new


# Called when the node enters the scene tree for the first time.
# func _ready():
# 	pass # Replace with function body.

func _physics_process(delta):
	position.x = _pos.x
	position.y = _pos.y

func _process(delta):
	while true:
		rng.randomize()
		_pos.x = rng.randi(0, 100)
		_pos.y = rng.randi(0, 100)
		yield(get_tree().create_timer(5),"timeout")
