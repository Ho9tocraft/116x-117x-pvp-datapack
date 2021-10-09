#vote result
execute store result score #Helper stage-sel-result run scoreboard players get @r stage-sel-vote
execute if score #Helper stage-sel-result matches 0 run tellraw @a ["",{"text":"STAGE SELECT RESULT: ["},{"text":"FEW WORLD","color":"green"},{"text":"]"}]
execute if score #Helper stage-sel-result matches 1 run tellraw @a ["",{"text":"STAGE SELECT RESULT: ["},{"text":"THE DESERT","color":"green"},{"text":"]"}]
execute if score #Helper stage-sel-result matches 2 run tellraw @a ["",{"text":"STAGE SELECT RESULT: ["},{"text":"SUBNAUTICA","color":"green"},{"text":"]"}]
