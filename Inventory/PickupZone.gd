extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var item_in_range = {}

func _on_PickupZone_body_entered(body):
	item_in_range[body] = body


func _on_PickupZone_body_exited(body):
	if item_in_range.has(body):
		item_in_range.erase(body)
