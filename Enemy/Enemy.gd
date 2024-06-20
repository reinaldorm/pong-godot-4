extends CharacterBody2D

var ball;
var SPEED = 300.0;

func _ready():
	ball = get_parent().find_child("Ball");


func _physics_process(delta):
	var direction = getDirection();
	velocity.y = SPEED * direction;
	move_and_slide();


func getDirection():
	var difference = ball.position.y - position.y;
	if abs(difference) > 75:
		if difference > 0: return 1;
		else: return -1
	else: return 0;


func lock_player():
	position = Vector2(1220, 360);
	SPEED = 0;


func unlock_player():
	SPEED = 400.0;

