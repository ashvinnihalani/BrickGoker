extends Sprite


# Declare member variables here. Examples:
export var initialX = 0
export var initialY = 1
export var speed = 100
var speedX
var speedY


# Called when the node enters the scene tree for the first time.
func _ready():
	speedX = initialX * speed
	speedY = initialY * speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += delta * speedX
	position.y += delta * speedY


# Speed changes on where the area is entered. Ie if the ball touches on the left/right only the right changes if it touches on the top or bottom it touches on the top or bottom
func _on_Area2D_area_entered(area):
	speedX = -1 * speedX
	speedY = -1 * speedY
