#攻撃力UPⅢ 60 seconds
execute as @a[scores={ship-num=2,skill3-ct=0,FocusPoint=35..},predicate=ship-based-pvp-datapacks:carthus-rouge] at @s run effect give @s strength 60 2 false
#Effects
execute as @a[scores={ship-num=2,skill3-ct=0,FocusPoint=35..},predicate=ship-based-pvp-datapacks:carthus-rouge] at @s run particle dust 0.635 0.125 0.255 1 ~ ~ ~ 0 0 0 1 20 normal @a
#Consuming FP: 35
execute as @a[scores={ship-num=2,skill3-ct=0,FocusPoint=35..},predicate=ship-based-pvp-datapacks:carthus-rouge] at @s run scoreboard players remove @s FocusPoint 35
#CT: 200 seconds
execute as @a[scores={ship-num=2,skill3-ct=0},predicate=ship-based-pvp-datapacks:carthus-rouge] at @s run scoreboard players set @s skill3-ct 200
