#ループ処理
execute if score #Helper ship-sel-rand matches 1.. as @r[scores={ship-num=0}] at @s run function ship-based-pvp-datapacks:calc/ship_sel_random
execute if score #Helper ship-sel-rand matches 1.. run scoreboard players remove #Helper ship-sel-rand 1
function ship-based-pvp-datapacks:calc/ship_selection/ship-sel-rand-once
