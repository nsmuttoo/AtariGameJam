extends ProgressBar

#var nameItem = get_parent()
var i =0
#var time = get_node(nameItem).cooldown
# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = !self.visible
	fill_mode = 1
	SignalBus.connect("startFight", action)
	SignalBus.connect("timer1", cooldown)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = 100*get_node("Item1Timer").time_left/i
	
	
	pass
func cooldown(cooldown):
	i = cooldown

func action():
	self.visible = !self.visible
	#print(nameItem.item1name)
	pass
