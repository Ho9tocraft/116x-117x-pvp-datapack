#時空干渉
#全体スタン→嵐の落雷（0.5 sec）→頭割りマーカー（10 sec）→散開マーカー（5 sec）→全体範囲ダメージ（25 sec）→ランダムターゲット強攻撃（50 sec）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "限界を超え、今時に触れん…！"}]
#マーカー付与
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run tellraw @a {"text": "死した神稚児の「時空干渉」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s as @a[team=Blue,sort=random,limit=4] at @s run tag @s add BLU_DISPERSAL
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s as @r[team=Blue] at @s run tag @s add BLU_SPLITTING
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s as @e[sort=random,limit=4,team=Blue,tag=!Thunder_Over] at @s run tag @s add Thunder_Over
#全体スタン
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s as @e[team=Blue] at @s run effect give @s slowness 5 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s as @e[team=Blue] at @s run effect give @s mining_fatigue 5 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s as @e[team=Blue] at @s run effect give @s jump_boost 5 250 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s as @e[team=Blue] at @s run effect give @s weakness 5 255 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s as @e[team=Blue] at @s run effect give @s blindness 5 255 false
# schedule付与
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/splitting-aoe 10s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/dispersal-aoe 5s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/all-area-aoe 25s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/thunder-storm-roopticks 0.5s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/randomtarget-stronghit 50s
