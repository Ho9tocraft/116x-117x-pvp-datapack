#コンデンスマインド
#FPを徐々に回復する効果がある
execute as @a[scores={ship-num=14,FocusPoint=34..150,skill2-ct=0},tag=!condense_mind,predicate=ship-based-pvp-datapacks:condense_mind] at @s run tag @s add condense_mind
execute as @a[scores={ship-num=14,FocusPoint=34..150,skill2-ct=0},tag=condense_mind,predicate=ship-based-pvp-datapacks:condense_mind] at @s run scoreboard players remove @s FocusPoint 34
execute as @a[scores={ship-num=14,skill2-ct=0},tag=condense_mind,predicate=ship-based-pvp-datapacks:condense_mind] at @s run scoreboard players set @s skill2-ct 15
execute as @a[scores={ship-num=14,skill2-ct=..5,FocusPoint=..33}] at @s run scoreboard players set @s skill2-ct 5

execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s run particle dust_color_transition 0.000 1.000 1.000 1 0.941 0.973 1.000 ~ ~1 ~ 0.4 0.9 0.4 1 0 normal @a[distance=..10]
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 0 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 2 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 4 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 6 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 8 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 12 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 14 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 16 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},tag=condense_mind] at @s if score #Helper tick-sec_conv matches 18 run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,skill2-ct=5},tag=condense_mind] at @s run tag @s remove condense_mind
