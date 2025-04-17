extends Item


# Called when the node enters the scene tree for the first time.
func _ready():
	process_mode = Node.PROCESS_MODE_PAUSABLE
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func action():
	
	await get_tree().create_timer(cooldown).timeout
	SignalBus.emit_signal("playerHeal",heal)
	SignalBus.emit_signal("playerBlock", block)
	SignalBus.emit_signal("enemyDamage",damage)
	print("humanChest action dealt damage:",damage," heal:", heal, " block:", block)
	pass
