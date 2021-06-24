#惜別の涙
execute as @a[scores={ship-num=4,skill3-ct=0,FocusPoint=100..},predicate=ship-based-pvp-datapacks:tears-of-denial,nbt=!{Inventory:[{id:"minecraft:totem_of_undying",Slot:-106b}]}] at @s run item replace entity @s weapon.offhand with totem_of_undying 1
#FP消費: 100
execute as @a[scores={ship-num=4,skill3-ct=0,FocusPoint=100..},predicate=ship-based-pvp-datapacks:tears-of-denial] at @s run scoreboard players remove @s FocusPoint 100
#CT: 120 seconds
execute as @a[scores={ship-num=4,skill3-ct=0},predicate=ship-based-pvp-datapacks:tears-of-denial] at @s run scoreboard players set @s skill3-ct 120
