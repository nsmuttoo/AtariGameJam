extends Enemy
#give damage to player
signal takeDamageSignal(value)

func _ready():
	process_mode = Node.PROCESS_MODE_PAUSABLE
	action()
	pass
	
func action():
	while health>0:
		
		await get_tree().create_timer(cooldown).timeout
		print("Chicken Action")
		takeDamageSignal.emit(damage)
		
	pass
func takeDamage(value):
	print("Chicken Take damage:",value)
	health = health-value
	if(health<0):
		chickenDeath()
	pass
func chickenDeath():
	print("Chicken Dies")
	get_tree().quit() 
	pass

func _on_human_legs_damage_enemy(value):
	takeDamage(value)
	pass # Replace with function body.


func _on_human_arms_damage_enemy(value):
	takeDamage(value)
	pass # Replace with function body.


func _on_human_chest_damage_enemy(value):
	
	takeDamage(value)
	pass # Replace with function body.


func _on_human_head_damage_enemy(value):
	takeDamage(value)
	pass # Replace with function body.
