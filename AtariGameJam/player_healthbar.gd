extends TextureProgressBar


func _ready() -> void:
	SignalBus.connect("updatePlayerHealthbar", update)
	print("where bar")
	visible = true

	
	
func update(health, maxHealth):
	value = health / maxHealth * 100
	get_node("Health Label").updateLabel(str(health))
	
