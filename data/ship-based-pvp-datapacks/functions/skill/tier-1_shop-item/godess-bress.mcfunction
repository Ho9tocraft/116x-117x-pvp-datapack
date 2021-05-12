#女神の祝福
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/godess-bress,scores={skill1-ct=0,skill2-ct=0}] at @s run effect give @s instant_health 1 2 false
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/godess-bress,scores={skill1-ct=0,skill2-ct=0}] at @s run scoreboard players set @s skill1-ct 10
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/godess-bress,scores={skill1-ct=10,skill2-ct=0}] at @s run scoreboard players set @s skill2-ct 10
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/godess-bress,scores={skill1-ct=10,skill2-ct=10}] at @s run clear @s dragon_breath{citTexture:Elixer-1} 1
