#時空干渉AOE
#マーカー付与
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run tellraw @a {"text": "死した神稚児の「時空干渉」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @a[team=Blue,sort=random,limit=4] at @s run tag @s add BLU_DISPERSAL
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @r[team=Blue,tag=!BLU_DISPERSAL] at @s run tag @s add BLU_SPLITTING
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[sort=random,limit=4,team=Blue,tag=!Thunder_Over] at @s run tag @s add Thunder_Over
#全体スタン
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s slowness 3 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s mining_fatigue 3 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s jump_boost 3 250 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s weakness 3 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s blindness 3 255 false
# schedule付与
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/splitting-aoe 15s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/dispersal-aoe 5s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/all-area-aoe 25s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/thunder-storm-roopticks 0.5s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/randomtarget-stronghit 30s
