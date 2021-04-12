#効果
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=100..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run effect give @s speed 20 3 false
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=100..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run effect give @s jump_boost 20 3 false
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=100..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run effect give @s regeneration 20 3 false
#Effects
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=100..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run particle dust 0.635 0.125 0.255 1 ~ ~ ~ 0 0 0 1 20 normal @a
#Consuming FP: 100
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=100..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run scoreboard players remove @s FocusPoint 100
#CT: 30 seconds
execute as @a[scores={ship-num=7,skill2-ct=0},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run scoreboard players set @s skill2-ct 30
