extends Node


signal playerDamage(value: int)
signal playerHeal(value: int)
signal playerBlock(value: int)

signal enemyDamage(value: int)
signal enemyHeal(value: int)
signal enemyBlock(value: int)

signal startFight
signal playerWin
signal gameOver

signal equipItem(itemName: String)
signal buttonInvis

signal updatePlayerHealthbar(health : int, maxHealth : int)
<<<<<<< HEAD

signal timer1(cooldown: float)
signal timer2(cooldown: float)
signal timer3(cooldown: float)
signal timer4(cooldown: float)
=======
signal updateBeastHealthbar(health : int, maxHealth : int)
>>>>>>> 70857bc89e3026d6a48760ea53ab026d763f8607
