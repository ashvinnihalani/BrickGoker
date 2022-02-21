extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var cracked = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_area_entered(area):
	if not cracked:
		# Add seperate texture to indicate cracked
		cracked = true
	else:
		visible = false
		$Area2D.queue_free()
