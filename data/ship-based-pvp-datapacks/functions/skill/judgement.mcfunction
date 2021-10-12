#真名決裁(#7)
execute as @a[scores={ship-num=18,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:judgement,team=Red] at @s as @e[team=Blue,distance=..20] run effect give @s slowness 30 3 false
execute as @a[scores={ship-num=18,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:judgement,team=Blue] at @s as @e[team=Red,distance=..20] run effect give @s slowness 30 3 false
execute as @a[scores={ship-num=18,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:judgement] at @s run scoreboard players remove @s FocusPoint 20
execute as @a[scores={ship-num=18,skill3-ct=0},predicate=ship-based-pvp-datapacks:judgement] at @s run scoreboard players set @s skill3-ct 120
execute as @a[scores={ship-num=18,skill3-ct=..5,FocusPoint=..19},predicate=ship-based-pvp-datapacks:judgement] at @s run scoreboard players set @s skill3-ct 5
