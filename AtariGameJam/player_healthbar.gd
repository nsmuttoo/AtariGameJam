extends TextureProgressBar


func _ready() -> void:
	SignalBus.connect("updatePlayerHealthbar", update)
	self.show()

	
func update(health, maxHealth):
	value = health / maxHealth * 100
	get_node("Player Health Label").updateLabel(str(health))
	
