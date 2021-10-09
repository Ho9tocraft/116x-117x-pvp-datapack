#致死の白霧専用プロセス
#tick-funcに組み込み

#靄
execute as @e[type=area_effect_cloud,tag=mist] at @s run particle dust 0.961 0.961 0.961 1 ~ ~ ~ 2 2 2 1 180 normal
execute as @e[type=area_effect_cloud,tag=mist-red] at @s as @e[type=!#ship-based-pvp-datapacks:undead,team=Blue,distance=..5] at @s run effect give @s instant_damage 10 1 false
execute as @e[type=area_effect_cloud,tag=mist-blue] at @s as @e[type=!#ship-based-pvp-datapacks:undead,team=Red,distance=..5] at @s run effect give @s instant_damage 10 1 false
execute as @e[type=area_effect_cloud,tag=mist-red] at @s as @e[type=#ship-based-pvp-datapacks:undead,team=Blue,distance=..5] at @s run effect give @s instant_health 10 1 false
execute as @e[type=area_effect_cloud,tag=mist-blue] at @s as @e[type=#ship-based-pvp-datapacks:undead,team=Red,distance=..5] at @s run effect give @s instant_health 10 1 false
