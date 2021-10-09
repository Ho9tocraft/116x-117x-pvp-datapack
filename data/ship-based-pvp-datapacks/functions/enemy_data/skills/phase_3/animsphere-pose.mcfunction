execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run tellraw @a {"text": "死した神稚児の「冠位指定／人理保障天球」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-grand_start
