#リス地管理
data remove storage test Score1
data remove storage test Score2
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches -1024 positioned -185 49 -153 store result storage test Score1 int 1 run function ship-based-pvp-datapacks:enemy_data/yuzuki-handheld
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches -1024 store result storage test Score2 int 1 run spawnpoint @a[team=Blue,scores={ship-num=1..}] -184 44 -115
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches -1 store result storage test Score1 int 1 run spawnpoint @a[team=Red,scores={ship-num=1..}] -126 64 -94
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches -1 store result storage test Score2 int 1 run spawnpoint @a[team=Blue,scores={ship-num=1..}] -51 64 -19
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 store result storage test Score1 int 1 run spawnpoint @a[team=Red,scores={ship-num=1..}] 290 96 -94
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 store result storage test Score2 int 1 run spawnpoint @a[team=Blue,scores={ship-num=1..}] 397 96 13
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 1 store result storage test Score1 int 1 run spawnpoint @a[team=Red,scores={ship-num=1..}] 290 95 34
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 1 store result storage test Score2 int 1 run spawnpoint @a[team=Blue,scores={ship-num=1..}] 397 100 141
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 2 store result storage test Score1 int 1 run spawnpoint @a[team=Red,scores={ship-num=1..}] 290 74 -222
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 2 store result storage test Score2 int 1 run spawnpoint @a[team=Blue,scores={ship-num=1..}] 397 74 -115

execute if score #Helper CombatMode matches 0 unless score #Helper stage-sel-result matches -1024 run tellraw @a ["",{"text": "Success:"},{"nbt":"Score1","storage": "test"}]
execute if score #Helper CombatMode matches 0 unless score #Helper stage-sel-result matches -1024 run tellraw @a ["",{"text": "Success:"},{"nbt":"Score2","storage": "test"}]
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches -1024 run tellraw @a ["",{"text": "参加者:"},{"nbt":"Score2","storage": "test"},{"text": "人"}]

execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches -1024 run tp @a[team=Blue] -184 44 -115
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches -1 run tp @a[team=Red] -126 64 -94
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches -1 run tp @a[team=Blue] -51 64 -19
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 run tp @a[team=Red] 290 96 -94
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 run tp @a[team=Blue] 397 96 13
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 1 run tp @a[team=Red] 290 95 34
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 1 run tp @a[team=Blue] 397 100 141
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 2 run tp @a[team=Red] 290 74 -222
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 2 run tp @a[team=Blue] 397 74 -115

execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches -1024 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Blue] at @s run tp @s -184 44 -115
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches -1 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Red] at @s run tp @s -126 64 -94
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches -1 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Blue] at @s run tp @s -51 64 -19
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 0 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Red] at @s run tp @s 290 96 -94
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 0 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Blue] at @s run tp @s 397 96 13
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 1 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Red] at @s run tp @s 290 95 34
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 1 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Blue] at @s run tp @s 397 100 141
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 2 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Red] at @s run tp @s 290 74 -222
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 2 as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator,team=Blue] at @s run tp @s 397 74 -115


