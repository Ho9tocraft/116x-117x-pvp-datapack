#散開処理AB
execute as @a[team=Blue,tag=BLU_DISPERSAL] at @s as @e[team=Blue,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 3 false
execute as @a[team=Blue,tag=BLU_DISPERSAL] at @s as @e[team=Blue,distance=..15,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 3 false
