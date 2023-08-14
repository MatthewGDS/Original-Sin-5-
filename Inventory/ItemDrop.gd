extends KinematicBody2D

var velocity = Vector2.ZERO
var item_name

var player = null
var being_picked_up = false

func _ready():
	item_name = "Slime Potion"
	
func _physics_process(delta):
	if being_picked_up == false:
		velocity = velocity
	else:
		var direction = global_position.direction_to(player.global_position)
		velocity = velocity
		
		var distance = global_position.distance_to(player.global_position)
		if distance < 4:
			PlayerInventory.add_item(item_name, 1)
			queue_free()

func pick_up_item(body):
	player = body
	being_picked_up = true
