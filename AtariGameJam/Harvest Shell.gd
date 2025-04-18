extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalBus.connect("buttonInvis",buttonInvis)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func buttonInvis():
	self.visible = !self.visible
	pass



func _on_pressed():
	SignalBus.emit_signal("equipItem", "ladyBunnyShell")
	SignalBus.emit_signal("buttonInvis")
	
	pass # Replace with function body.
