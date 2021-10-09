#時空干渉AOE
#マーカー付与
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run tellraw @a {"text": "死した神稚児の「ディバイン・タイムフリーズ」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @a[team=Blue,sort=random,limit=4] at @s run tag @s add BLU_DISPERSAL
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @r[team=Blue,tag=!BLU_DISPERSAL] at @s run tag @s add BLU_SPLITTING
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[sort=random,limit=4,team=Blue,tag=!Thunder_Over] at @s run tag @s add Thunder_Over
#全体スタン
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s slowness 30 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s mining_fatigue 30 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s jump_boost 30 250 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s weakness 30 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s blindness 30 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run effect give @s instant_damage 1 1 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run scoreboard players set @s skill1-ct 30
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run scoreboard players set @s skill2-ct 30
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run scoreboard players set @s skill3-ct 30
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run scoreboard players set @s skill4-ct 30
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue] at @s run scoreboard players set @s awake_gauge 0
# schedule付与
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/splitting-aoe 45s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/dispersal-aoe 35s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/all-area-aoe 55s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/thunder-storm-roopticks 0.5s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/randomtarget-stronghit 60s
