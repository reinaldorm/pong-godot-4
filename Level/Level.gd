extends Node

var ball;
var playerScore = 0;
var enemyScore = 0;
var playersSpeed = 400;


func _ready():
	ball = get_node("Ball");
	restart_round();


func _process(delta):
	update_interface("EnemyScore", enemyScore);
	update_interface("PlayerScore", playerScore);


func _on_left_goal_body_entered(_body):
	restart_round();


func _on_right_goal_body_entered(_body):
	restart_round();


func _on_timer_timeout():
	ball.start_ball();
	get_tree().call_group("players", "unlock_player");


func restart_round():
	ball.restart_ball();
	get_tree().call_group("players", "lock_player");
	$Countdown.start();	


func update_interface(element, value):
	get_tree().call_group("interface", "update_interface", element, value);	

