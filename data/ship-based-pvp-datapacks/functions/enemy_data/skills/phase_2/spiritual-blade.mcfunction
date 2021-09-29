#霊魂の太刀
#敵仕様は3Way攻撃
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "これが霊魂の太刀だ、拝せよ、弱き命ども！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["SpiritualBlade","SB_L"]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["SpiritualBlade","SB_R"]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @e[type=armor_stand,tag=SpiritualBlade,tag=SB_L] at @s run tp @s ~ ~ ~ ~30 ~
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @e[type=armor_stand,tag=SpiritualBlade,tag=SB_R] at @s run tp @s ~ ~ ~ ~-30 ~
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run function ship-based-pvp-datapacks:enemy_data/skills/after/straight_aoe
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @e[type=armor_stand,tag=SpiritualBlade,tag=SB_L] at @s run function ship-based-pvp-datapacks:enemy_data/skills/after/straight_aoe
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s as @e[type=armor_stand,tag=SpiritualBlade,tag=SB_R] at @s run function ship-based-pvp-datapacks:enemy_data/skills/after/straight_aoe
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run kill @e[type=armor_stand,tag=SpiritualBlade]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run scoreboard players set @s skill3-ct 40
