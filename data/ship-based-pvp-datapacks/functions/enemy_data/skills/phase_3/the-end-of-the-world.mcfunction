#ジ・エンド・オブ・ザ・ワールド
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "神の怒りに砕け散れぇぇぇェェェエエエッ！！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a {"text": "死した神稚児は「火継ぎの終わりを看取るもの」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a {"text": "死した神稚児は「メテオ」の構え。","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a {"text": "死した神稚児の「嵐の落雷」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @a[tag=!EndOfWorld,team=Blue] at @s run tag @s add EndOfWorld
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/teotw-aoe 3s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @e[team=Blue,sort=random,limit=4,tag=!Meteor_Target] at @s run tag @s add Meteor_Target
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-start 7s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @e[sort=random,limit=4,team=Blue,tag=!Thunder_Over] at @s run tag @s add Thunder_Over
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @e[tag=Thunder_Over,team=Blue] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/thunder-storm-roopticks 0.5s
#CT処理
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run scoreboard players set @s skill3-ct 180
