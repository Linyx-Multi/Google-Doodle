""" extends Area2D

#speed and HP export.
export (int) var speed = 200
export (int) var max_health = 100

#variables
var velocity = Vector2()
var screen_size

#Get viewport size
func _ready():
	screen_size = get_viewport_rect().size

#Velocity and inputs
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

#move and slide velocity stuff
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	
#animations
func _process(delta):
	if Input.is_action_pressed("down"):
		$AnimatedSprite.play("walk_down")
	elif Input.is_action_pressed("up"):
		$AnimatedSprite.play("walk_up")
	else:
		$AnimatedSprite.stop() """
