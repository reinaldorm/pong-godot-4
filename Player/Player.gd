extends CharacterBody2D

var SPEED = 400.0


func get_input():
	var direction = Input.get_axis('up', 'down');
	return direction;


func _physics_process(_delta):
	velocity.y = get_input() * SPEED;
	
	move_and_slide()


func lock_player():
	position = Vector2(60, 360);
	SPEED = 0;


func unlock_player():
	SPEED = 400.0;

