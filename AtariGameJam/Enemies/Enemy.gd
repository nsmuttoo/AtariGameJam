extends CharacterBody2D

class_name Enemy

@export var maxHealth: int
@export var health: int
@export var blockHealth:int

@export var cooldown: int
@export var damage: int
@export var heal: int 
@export var block: int



func _ready():
	process_mode = Node.PROCESS_MODE_PAUSABLE
	
	pass
	
func action():
	pass
