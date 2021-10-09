#エンレイジダメージ処理
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage] at @s run tellraw @a {"text": "死した神稚児の「火継ぎの終わりを看取るもの」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage] at @s run playsound entity.ender_dragon.death master @a ~ ~ ~ 100 1 0.5
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage] at @s as @e[team=Blue,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1200 15 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage] at @s as @e[team=Blue,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1200 15 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage] at @s as @e[team=Blue] at @s run kill @s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage] at @s run scoreboard players set #Helper point-red 32768
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage] at @s run tag @s add Enrage
