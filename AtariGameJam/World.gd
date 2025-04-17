extends Node2D





# Called when the node enters the scene tree for the first time.
func _ready():
	SignalBus.connect("playerWin", playerWin)
	SignalBus.connect("gameOver", gameOver)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func gameOver():
	pass
func playerWin():
	get_tree().change_scene_to_file("res://reward_screen.tscn")
	pass
