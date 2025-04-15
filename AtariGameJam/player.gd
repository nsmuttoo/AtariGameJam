extends Area2D

@export var maxHealth = 0
@export var health = 0

@export var item1 = 4
@export var item2 = 5
@export var item3 = 6
@export var item4 = 7



func _ready():
	attack()
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
