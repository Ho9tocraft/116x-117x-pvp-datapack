#リス地管理
data remove storage test Score1
data remove storage test Score2
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 store result storage test Score1 int 1 run spawnpoint @a[team=Red,scores={ship-num=1..}] 1170 68 254
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 store result storage test Score2 int 1 run spawnpoint @a[team=Blue,scores={ship-num=1..}] 1242 82 182

tellraw @a ["",{"text": "Success:"},{"nbt":"Score1","storage": "test"}]
tellraw @a ["",{"text": "Success:"},{"nbt":"Score2","storage": "test"}]

execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 run tp @a[team=Red] 1170 68 254
execute if score #Helper CombatMode matches 0 if score #Helper stage-sel-result matches 0 run tp @a[team=Blue] 1242 82 182


execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 0 run tp @s[team=Red] 1170 68 254
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches 0 run tp @s[team=Blue] 1242 82 182
