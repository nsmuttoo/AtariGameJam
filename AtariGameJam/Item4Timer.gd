extends Timer


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalBus.connect("timer4", action)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func action(cooldown):
	start(cooldown)
