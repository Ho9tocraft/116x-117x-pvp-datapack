#女神の祝福
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=0,skill2-ct=0,ship-num=1..2}] at @s run scoreboard players set @s FocusPoint 150
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=0,skill2-ct=0,ship-num=3}] at @s run scoreboard players set @s FocusPoint 100
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=0,skill2-ct=0,ship-num=4}] at @s run scoreboard players set @s FocusPoint 200
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=0,skill2-ct=0,ship-num=5}] at @s run scoreboard players set @s FocusPoint 300
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=0,skill2-ct=0,ship-num=6..7}] at @s run scoreboard players set @s FocusPoint 250
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=0,skill2-ct=0,ship-num=8}] at @s run scoreboard players set @s FocusPoint 100

execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=0,skill2-ct=0}] at @s run clear @s dragon_breath{citTexture:Elixer-1} 1
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=0,skill2-ct=0}] at @s run scoreboard players set @s skill1-ct 10
execute as @a[predicate=ship-based-pvp-datapacks:tier-1_items/hidden-bress,scores={skill1-ct=10,skill2-ct=0}] at @s run scoreboard players set @s skill2-ct 10
