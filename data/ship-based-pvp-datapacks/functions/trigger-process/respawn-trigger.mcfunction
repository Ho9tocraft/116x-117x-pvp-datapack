#リス地管理
data remove storage test Score1
data remove storage test Score2
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 store result storage test Score1 int 1 run spawnpoint @a[team=Red,scores={ship-num=1..}] 290 96 -94
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 store result storage test Score2 int 1 run spawnpoint @a[team=Blue,scores={ship-num=1..}] 397 96 13
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 1 store result storage test Score1 int 1 run spawnpoint @a[team=Red,scores={ship-num=1..}] 290 95 34
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 1 store result storage test Score2 int 1 run spawnpoint @a[team=Blue,scores={ship-num=1..}] 397 100 141

execute if score #Helper CombatMode matches 0 run tellraw @a ["",{"text": "Success:"},{"nbt":"Score1","storage": "test"}]
execute if score #Helper CombatMode matches 0 run tellraw @a ["",{"text": "Success:"},{"nbt":"Score2","storage": "test"}]

execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 run tp @a[team=Red] 290 96 -94
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 run tp @a[team=Blue] 397 96 13
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 1 run tp @a[team=Red] 290 95 34
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 1 run tp @a[team=Blue] 397 100 141

execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 0 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Red] at @s run tp @s 290 96 -94
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 0 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Blue] at @s run tp @s 397 96 13
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 1 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Red] at @s run tp @s 290 95 34
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 1 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Blue] at @s run tp @s 397 100 141


