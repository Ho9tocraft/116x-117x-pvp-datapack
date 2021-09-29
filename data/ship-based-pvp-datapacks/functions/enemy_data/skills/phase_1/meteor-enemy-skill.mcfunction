#メテオ（結月の担い手専用）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @e[team=Blue,sort=random,limit=4,tag=!Meteor_Target] at @s run tag @s add Meteor_Target
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run effect give @s resistance 10 4 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "流星を受けるといい！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a {"text": "死した神稚児は「メテオ」の構え。","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-start 5s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run scoreboard players set @s skill3-ct 60
