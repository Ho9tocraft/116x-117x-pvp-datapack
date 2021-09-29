#トライデント投擲攻撃力UP(#8)
# 1.伝令
execute as @a[team=Red,scores={ship-num=4}] at @s as @e[type=trident,distance=..3,sort=nearest,tag=!Trident_Red,tag=!Trident_Blue,tag=!Trident_Define] at @s run tag @s add Trident_Red
execute as @a[team=Blue,scores={ship-num=4}] at @s as @e[type=trident,distance=..3,sort=nearest,tag=!Trident_Red,tag=!Trident_Blue,tag=!Trident_Define] at @s run tag @s add Trident_Blue
# n.トライデント投擲攻撃力UP処理
execute as @e[type=trident,distance=..3,sort=nearest,tag=!Trident_Define] at @s as @p at @s run tag @s add Trident_Define
execute as @e[type=trident,tag=Trident_Red] at @s as @e[type=!#ship-based-pvp-datapacks:undead,distance=..4,team=Blue] at @s run effect give @s instant_damage 1 1 false
execute as @e[type=trident,tag=Trident_Blue] at @s as @e[type=!#ship-based-pvp-datapacks:undead,distance=..4,team=Red] at @s run effect give @s instant_damage 1 1 false
execute as @e[type=trident,tag=Trident_Red] at @s as @e[type=#ship-based-pvp-datapacks:undead,distance=..4,team=Blue] at @s run effect give @s instant_health 1 1 false
execute as @e[type=trident,tag=Trident_Blue] at @s as @e[type=#ship-based-pvp-datapacks:undead,distance=..4,team=Red] at @s run effect give @s instant_health 1 1 false
