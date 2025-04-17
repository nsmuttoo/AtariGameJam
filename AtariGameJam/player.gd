extends Area2D

@export var maxHealth :int
@export var health :int
@export var blockHealth : int


@export var item1 = 0
@export var item2 = 0
@export var item3 = 0
@export var item4 = 0

signal takeDamageSignal()

func takeDamage(value):
	print("Player Take Damage: ", value)
	var hold =value
	
	value = value-blockHealth
	if(value<0):
		value=0
	blockHealth = blockHealth-hold
	if(blockHealth<0):
		blockHealth =0
	
	health = health-value
	updateLabels()
	if(health<=0):
		playerDeath()
	
	pass
	
func healUp(value):
	print("playerHealUp: ", value)
	if((health + value)>maxHealth):
		health = maxHealth
	else:
		health = health+value
		updateLabels()
	pass
	
func blockUp(value):
	print("playerBlockUp: ", value)
	blockHealth = blockHealth+value
	updateLabels()
func playerDeath():
	print("player died")
	get_tree().quit() 
	pass
func updateLabels():
	$PlayerHealth.text = "Health: "+ str(health)
	$PlayerBlock.text = "Block: " + str(blockHealth)
	pass
func begin():
	item1.action()
	item2.action()
	item3.action()
	item4.action()
	pass
func _ready():
	updateLabels()
	SignalBus.connect("playerHeal",healUp)
	SignalBus.connect("playerBlock",blockUp)
	SignalBus.connect("playerDamage",takeDamage)
	SignalBus.connect("startFight",begin)
	process_mode = Node.PROCESS_MODE_PAUSABLE
	takeDamageSignal.connect(takeDamage)
	
	item1 = get_node("humanHead")
	item2 = get_node("humanArms")
	item3 = get_node("humanChest")
	item4 = get_node("humanLegs")
	

	pass
	
func _process(delta):
	
	pass

func wait(seconds: float) -> void:
	print("wait start")
	await get_tree().create_timer(seconds).timeout
	print("wait over")

func attack() ->void:
	await wait(3)
	print("attack")
func defend() ->void:
	wait(1)
	print("defend")
	






func _on_chicken_take_damage_signal(value):
	takeDamage(value)
	pass # Replace with function body.
