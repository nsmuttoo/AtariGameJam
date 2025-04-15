extends Area2D

@export var maxHealth = 0
@export var health = 1

var item1 : Item
var item2 : Item
var item3 : Item
var item4 : Item

@export var attack_cooldown = 3
@export var defend_cooldown = 1

var nodenodenode
const HC = preload("res://humancock2.gd")

func _ready():
	#nodenodenode = get_node("ReferenceTest")
	#item1 = nodenodenode.cock
	#print(item1)
	
	#item1 = get_node("itemlist").humancock
	
	
	#item1 = get_node("Node2D").new()
	print(item1.damage)
	
	
	
	
	
	
	
	
	
	
	
func _process(delta):
	#attack(item1.damage)
	
	pass

func wait(seconds: float) -> void:
	print("wait start")
	await get_tree().create_timer(seconds).timeout
	print("wait over")

func attack(damage: int) ->void:
	await wait(attack_cooldown)
	print("attack")
	print(damage)

func defend() ->void:
	await wait(defend_cooldown)
	print("defend")
