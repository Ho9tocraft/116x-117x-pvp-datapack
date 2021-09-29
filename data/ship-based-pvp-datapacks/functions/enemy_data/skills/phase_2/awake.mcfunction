#覚醒（アサルトアーマー）
execute as @e[type=skeleton,tag=!awake,tag=Yuzuki_HandHeld,scores={awake_gauge=800..1600}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "本物の覚醒を見せてやろう…！","color": "red"}]
execute as @e[type=skeleton,tag=!awake,tag=Yuzuki_HandHeld,scores={awake_gauge=800..1600}] at @s run tag @s add awake
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..}] at @s as @e[team=Blue,distance=..5,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 10 1 false
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..}] at @s as @e[team=Blue,distance=..5,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 10 1 false
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..}] at @s run particle dust 0.918 0.333 0.024 1 ~ ~1 ~ 6 6 6 1 400 normal @a[distance=..30]
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..}] at @s run scoreboard players remove @s awake_gauge 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill4-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill4-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill3-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill3-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill2-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill2-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill1-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill1-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=0}] at @s run tag @s remove awake
