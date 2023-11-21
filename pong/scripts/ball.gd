extends CharacterBody2D

@export var player : CharacterBody2D 
var direction = Vector2(-1, 0)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	velocity = direction.normalized() * 700 * delta
	velocity.limit_length(300)
	var col = move_and_collide(velocity)
	
	if col:
		velocity = velocity.bounce(col.get_normal())
		direction.x = -direction.x
		direction.y =  (position.y - player.position.y) / player.height
	if position.y < 5 or position.y > 1075:
		#velocity = velocity.bounce(col.get_normal())
		direction.y = -direction.y
		#direction.y =  (position.y - player.position.y) / player.height
		print("asd")
