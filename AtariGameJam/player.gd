extends Area2D

@export var maxHealth = 0
@export var health = 0

@export var item1 = 0
@export var item2 = 0
@export var item3 = 0
@export var item4 = 0





func _ready():
	
	item1 = get_node("humanHead")
	item2 = get_node("humanArms")
	item3 = get_node("humanChest")
	item4 = get_node("humanLegs")
	
	item1.action()
	item2.action()
	item3.action()
	item4.action()
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
