extends Sprite2D
class_name Item

@export var cooldown : int
@export var slot : int
@export var id : int
@export var test:int
@export var damage:int

signal damageEnemy(value)
# Called when the node enters the scene tree for the first time.
func _ready():
	process_mode = Node.PROCESS_MODE_PAUSABLE
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func action():
	pass
