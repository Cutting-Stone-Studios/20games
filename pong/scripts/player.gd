class_name Paddle
extends CharacterBody2D


var speed = 700.0
const JUMP_VELOCITY = -400.0

var height = 175
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):

	var direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * speed
	else:
		velocity.y = move_toward(velocity.y, 0, speed)
	
	position.y = clamp(position.y, 100, 980)

	move_and_slide()
