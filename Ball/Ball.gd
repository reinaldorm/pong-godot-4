extends CharacterBody2D

var SPEED = 350.0

func _ready():
	$Tail.visible = false;
	

func _physics_process(delta):
	var collision_obj = move_and_collide(velocity * delta);
	if collision_obj:
		velocity = velocity.bounce(collision_obj.get_normal());


func restart_ball():
	position = Vector2(640, 360);
	velocity = Vector2.ZERO;


func start_ball():
	const axisArr = [-1, 1];
	velocity.x = axisArr[randi() % 2] * SPEED;
	velocity.y = axisArr[randi() % 2] * SPEED * 0.75;

