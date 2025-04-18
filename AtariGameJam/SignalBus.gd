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

signal timer1(cooldown: float)
signal timer2(cooldown: float)
signal timer3(cooldown: float)
signal timer4(cooldown: float)
