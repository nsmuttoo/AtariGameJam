extends TextureProgressBar


func _ready() -> void:
	SignalBus.connect("updateBeastHealthbar", update)
	self.show()

	
func update(health, maxHealth):
	value = health / maxHealth * 100
	get_node("Beast Health Label").updateLabel(str(health))
	
