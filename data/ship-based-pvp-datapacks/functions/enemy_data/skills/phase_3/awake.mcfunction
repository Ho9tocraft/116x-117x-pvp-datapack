#覚醒（流星群）
execute as @e[type=skeleton,tag=!awake,tag=Yuzuki_HandHeld,scores={awake_gauge=800..1600}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "侮るな…！限界など、いくらでも越えてやる…！！","color": "red"}]
execute as @e[type=skeleton,tag=!awake,tag=Yuzuki_HandHeld,scores={awake_gauge=800..1600}] at @s run tag @s add awake

execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..}] at @s if score #Helper tick-sec_conv matches 0 run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-grand_start 1s append
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..}] at @s if score #Helper tick-sec_conv matches 0 run effect give @s resistance 1 3 false

execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..}] at @s run scoreboard players remove @s awake_gauge 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill4-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill4-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill3-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill3-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill2-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill2-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill1-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill1-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill4-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill4-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill3-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill3-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill2-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill2-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=1..,skill1-ct=1..}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill1-ct 1
execute as @e[type=skeleton,tag=awake,tag=Yuzuki_HandHeld,scores={awake_gauge=0}] at @s run tag @s remove awake
