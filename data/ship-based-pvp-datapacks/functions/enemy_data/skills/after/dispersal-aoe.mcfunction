#散開処理AB
execute as @a[team=Blue,tag=BLU_DISPERSAL] at @s store result score @s splitting-member run execute as @s at @s if entity @a[team=Blue,distance=..15]
execute as @a[team=Blue,tag=BLU_DISPERSAL] at @s if score @s splitting-member matches 1 as @e[team=Blue,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 3 false
execute as @a[team=Blue,tag=BLU_DISPERSAL] at @s if score @s splitting-member matches 1 as @e[team=Blue,distance=..15,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 3 false
execute as @a[team=Blue,tag=BLU_DISPERSAL] at @s if score @s splitting-member matches 2.. as @e[team=Blue,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 5 false
execute as @a[team=Blue,tag=BLU_DISPERSAL] at @s if score @s splitting-member matches 2.. as @e[team=Blue,distance=..15,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 5 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={kichigaiking=7}] at @s as @a[team=Blue,tag=BLU_DISPERSAL] at @s as @e[team=Blue,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s wither 10 9 false
tag @a[tag=BLU_DISPERSAL] remove BLU_DISPERSAL
