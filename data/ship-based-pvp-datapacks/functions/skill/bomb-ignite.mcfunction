execute as @a[scores={ship-num=15,skill1-ct=0},predicate=ship-based-pvp-datapacks:bomb-ignite,team=Red] at @s as @e[type=creeper,team=Red,distance=..20] run data modify entity @s ignited set value true
execute as @a[scores={ship-num=15,skill1-ct=0},predicate=ship-based-pvp-datapacks:bomb-ignite,team=Blue] at @s as @e[type=creeper,team=Blue,distance=..20] run data modify entity @s ignited set value true
execute as @a[scores={ship-num=15,skill1-ct=0},predicate=ship-based-pvp-datapacks:bomb-ignite] at @s run scoreboard players set @s skill1-ct 5
