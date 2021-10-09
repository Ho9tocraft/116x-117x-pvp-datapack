#狂王の気紛れ
#消費FP: 20、CT: 15 sec
execute as @a[scores={ship-num=0}] at @s run scoreboard players set @s kichigaiking 0
execute as @a[scores={ship-num=0}] at @s run scoreboard players set @s KK_RESULT 0
execute as @a[scores={kichigaiking=..2,ship-num=10}] at @s run scoreboard players add @s kichigaiking 1
execute as @a[scores={kichigaiking=3,ship-num=10}] at @s run scoreboard players set @s kichigaiking 0
execute as @a[scores={kichigaiking=1..}] at @s unless score @s ship-num matches 10 run scoreboard players set @s kichigaiking 0

execute as @a[scores={skill3-ct=0,ship-num=10,FocusPoint=20..},predicate=ship-based-pvp-datapacks:madking] at @s run scoreboard players operation @s KK_RESULT = @s kichigaiking
#各種アフターバーナー処理実行
execute as @a[scores={skill3-ct=0,ship-num=10,FocusPoint=20..,KK_RESULT=0},predicate=ship-based-pvp-datapacks:madking] at @s run function ship-based-pvp-datapacks:skill/madking/blessing
execute as @a[scores={skill3-ct=0,ship-num=10,FocusPoint=20..,KK_RESULT=1},predicate=ship-based-pvp-datapacks:madking] at @s run function ship-based-pvp-datapacks:skill/madking/howling
execute as @a[scores={skill3-ct=0,ship-num=10,FocusPoint=20..,KK_RESULT=2},predicate=ship-based-pvp-datapacks:madking] at @s run function ship-based-pvp-datapacks:skill/madking/curse

execute as @a[scores={skill3-ct=0,ship-num=10,FocusPoint=20..},predicate=ship-based-pvp-datapacks:madking] at @s run scoreboard players remove @s FocusPoint 20
execute as @a[scores={skill3-ct=0,ship-num=10},predicate=ship-based-pvp-datapacks:madking] at @s run scoreboard players set @s skill3-ct 40
execute as @a[scores={skill3-ct=..5,ship-num=10,FocusPoint=..19}] at @s run scoreboard players set @s skill3-ct 5


