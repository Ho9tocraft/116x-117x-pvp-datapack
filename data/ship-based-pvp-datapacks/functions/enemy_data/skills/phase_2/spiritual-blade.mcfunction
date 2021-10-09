#霊魂の太刀
#敵仕様は3Way攻撃
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "これが霊魂の太刀だ、拝せよ、弱き命ども！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a {"text": "死した神稚児の「奥義・霊魂の太刀」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run function ship-based-pvp-datapacks:enemy_data/skills/after/straight_aoe
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s rotated ~30 ~ run function ship-based-pvp-datapacks:enemy_data/skills/after/straight_aoe
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s rotated ~-30 ~ run function ship-based-pvp-datapacks:enemy_data/skills/after/straight_aoe
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run scoreboard players set @s skill3-ct 40
