extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
var screen_size
export (int) var max_health = 100

func _ready():
	screen_size = get_viewport_rect().size
	
func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		velocity.x += 1
	if Input.is_action_pressed('left'):
		velocity.x -= 1
	if Input.is_action_pressed('down'):
		velocity.y += 1
	if Input.is_action_pressed('up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	move_and_slide(velocity)

func _process(delta):
	if Input.is_action_pressed("down"):
		$AnimatedSprite.play("walk_down")
	elif Input.is_action_pressed("up"):
		$AnimatedSprite.play("walk_up")
	else:
		$AnimatedSprite.stop()