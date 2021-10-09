#時空干渉
#全体スタン→嵐の落雷（0.5 sec）→頭割りマーカー（10 sec）→散開マーカー（5 sec）→全体範囲ダメージ（25 sec）→ランダムターゲット強攻撃（50 sec）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "限界を超え、今時に触れん…！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run tellraw @a {"text": "死した神稚児は「時空干渉」の構え。","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/time-access_aoe 5s
#CT処理
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run scoreboard players set @s skill4-ct 120
