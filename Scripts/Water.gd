extends Area2D

func _ready():
	
	var animationState : AnimationNodeStateMachinePlayback #callback to the animation state machine
	var animationPath = $AnimationTree.get("parameters/playback") 
	animationState = animationPath
	animationState.start("still_water")


func _on_Water_body_entered(body):
	
	get_tree().change_scene("res://Scenes/Main.tscn")
