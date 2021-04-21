#ジークの酒

execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/siegbraw,scores={skill1-ct=0}] at @s run effect give @s instant_health 1 2 false
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/siegbraw,scores={skill1-ct=0}] at @s run effect give @s resistance 180 2 false
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/siegbraw,scores={skill1-ct=0}] at @s run effect give @s blindness 15 3 false
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/siegbraw,scores={skill1-ct=0}] at @s run effect give @s nausea 10 0 false
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/siegbraw,scores={skill1-ct=0}] at @s run clear @s dragon_breath{citTexture:siegBEER} 1
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/siegbraw,scores={skill1-ct=0}] at @s run scoreboard players set @s skill1-ct 10
