execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "光の化け物よ、犯した罪を懺悔せよ！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run tellraw @a {"text": "死した神稚児は「ディバイン・タイムフリーズ」の構え。","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/dtf-aoe 5s
#CT処理
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill4-ct=0}] at @s run scoreboard players set @s skill4-ct 270
