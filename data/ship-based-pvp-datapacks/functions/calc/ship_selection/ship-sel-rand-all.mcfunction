#職業選択ランダマイザ
scoreboard players set @a ship-num 0
execute store result score #Helper ship-sel-rand run execute if entity @a[scores={ship-num=0}]
function ship-based-pvp-datapacks:calc/ship_selection/ship-sel-rand-once
