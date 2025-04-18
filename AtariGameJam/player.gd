extends Area2D

@export var maxHealth :int
@export var health :int
@export var blockHealth : int


@export var item1 = 0
@export var item2 = 0
@export var item3 = 0
@export var item4 = 0

var item1name = "humanHead"
var item2name = "humanArms"
var item3name = "humanChest"
var item4name = "humanLegs"

signal takeDamageSignal()

func takeDamage(value):
	if(item1name == "ladyBunnyHead"):
		if(randi_range(0,3) == 3):
			value = 0
			print("Dodged!")
	
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
	SignalBus.emit_signal("gameOver")
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
	
	SignalBus.connect("playerHeal",healUp)
	SignalBus.connect("playerBlock",blockUp)
	SignalBus.connect("playerDamage",takeDamage)
	SignalBus.connect("startFight",begin)
	SignalBus.connect("equipItem", equipItem)
	
	takeDamageSignal.connect(takeDamage)
	
	item1 = get_node(item1name)
	item2 = get_node(item2name)
	item3 = get_node(item3name)
	item4 = get_node(item4name)
	

	pass
	
func _process(delta):
	
	pass
	
	
func equipItem(name):
	var slot = get_node(name).slot
	if(slot == 0):
		item1name = name
	if(slot == 1):
		item2name = name
	if(slot == 2):
		item3name = name
	if(slot == 3):
		item4name = name
			
	item1 = get_node(item1name)
	item2 = get_node(item2name)
	item3 = get_node(item3name)
	item4 = get_node(item4name)
	print(item3name)
	pass

func wait(seconds: float) -> void:
	print("wait start")
	await get_tree().create_timer(seconds).timeout
	print("wait over")








func _on_chicken_take_damage_signal(value):
	takeDamage(value)
	pass # Replace with function body.
