extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed = 100
var velocity = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		velocity = -1
	if Input.is_action_just_pressed("ui_right"):
		velocity = 1
	if Input.is_action_just_pressed("ui_accept"):
		velocity = 0
	position.x += velocity * speed * delta
