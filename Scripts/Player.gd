extends KinematicBody2D

var speed = 200
var jumpForce = 300
var gravity = 800

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	velocity.x = 0
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed 
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("ui_select") and is_on_floor():
		velocity.y -= jumpForce
