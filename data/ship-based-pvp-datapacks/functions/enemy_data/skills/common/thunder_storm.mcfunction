#嵐の落雷
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill2-ct=0}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "大嵐をくれてやる…！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill2-ct=0}] at @s run tellraw @a {"text": "死した神稚児の「嵐の落雷」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill2-ct=0}] at @s as @e[sort=random,limit=4,team=Blue,tag=!Thunder_Over] at @s run tag @s add Thunder_Over
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill2-ct=0}] at @s as @e[tag=Thunder_Over,team=Blue] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/thunder-storm-roopticks 10s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill2-ct=0}] at @s run scoreboard players set @s skill2-ct 55
