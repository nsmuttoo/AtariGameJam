extends Enemy
#give damage to player
signal takeDamageSignal(value)

func _ready():
	updateLabels()
	SignalBus.connect("enemyDamage",takeDamage)
	SignalBus.connect("enemyHeal",healUp)
	SignalBus.connect("enemyBlock",blockUp)
	SignalBus.connect("startFight",begin)
	SignalBus.updateBeastHealthbar.emit(health, maxHealth)
	
	pass
func begin():
	action()
	pass
	
func action():
	while health>0:
		
		await get_tree().create_timer(cooldown).timeout
		print("Chicken Action")
		
		SignalBus.emit_signal("playerDamage",damage)
		SignalBus.emit_signal("enemyHeal",heal)
		SignalBus.emit_signal("enemyBlock",block)
	pass
func takeDamage(value):
	print("Chicken Take damage:",value)
	var hold =value
	
	value = value-blockHealth
	
	if(value<0):
		value=0
	blockHealth = blockHealth-hold
	if(blockHealth<0):
		blockHealth =0
	
	health = health-value
	updateLabels()
	if(health<0):
		chickenDeath()
	
	SignalBus.updateBeastHealthbar.emit(health, maxHealth)
	
func healUp(value):
	print("chickenHealUp: ", value)
	if((health + value)>maxHealth):
		health = maxHealth
	else:
		health = health+value
	updateLabels()
	pass
	
func blockUp(value):
	print("chickenBlockUp: ", value)
	blockHealth = blockHealth+value
	updateLabels()
	pass
func chickenDeath():
	print("Chicken Dies")
	SignalBus.emit_signal("playerWin")
	pass
	
func updateLabels():
	$enemyHealth.text = "Health: "+ str(health)
	$enemyBlock.text = "Block: " + str(blockHealth)
	pass
