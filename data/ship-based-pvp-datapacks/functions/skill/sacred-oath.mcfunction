#固い誓い（Sacred Oath）

#1: 抽出しつつ半径計算。4.25m
execute as @a[scores={skill3-ct=0,ship-num=1,FocusPoint=65..},predicate=ship-based-pvp-datapacks:sacred-oath,team=Red] at @s as @e[distance=..4.25,team=Red] at @s run effect give @s resistance 20 1 false
execute as @a[scores={skill3-ct=0,ship-num=1,FocusPoint=65..},predicate=ship-based-pvp-datapacks:sacred-oath,team=Blue] at @s as @e[distance=..4.25,team=Blue] at @s run effect give @s resistance 20 1 false
execute as @a[scores={skill3-ct=0,ship-num=1,FocusPoint=65..},predicate=ship-based-pvp-datapacks:sacred-oath,team=Red] at @s as @e[distance=..4.25,team=Red] at @s run effect give @s strength 20 1 false
execute as @a[scores={skill3-ct=0,ship-num=1,FocusPoint=65..},predicate=ship-based-pvp-datapacks:sacred-oath,team=Blue] at @s as @e[distance=..4.25,team=Blue] at @s run effect give @s strength 20 1 false
#2: 演出用パーティクル
execute as @a[scores={ship-num=1,skill3-ct=0,FocusPoint=65..},predicate=ship-based-pvp-datapacks:sacred-oath] at @s run particle dust 0.953 0.596 0.000 1 ~ ~ ~ 4.25 0.2 4.25 1 400 normal @a
#実績解除
execute as @a[scores={ship-num=1,skill3-ct=0,FocusPoint=65..},predicate=ship-based-pvp-datapacks:sacred-oath,advancements={ship-based-pvp-datapacks:first-win/knight-first-win=true}] at @s run advancement grant @s only ship-based-pvp-datapacks:ship-contents/knight-the-undead
#3: FP消費
execute as @a[scores={ship-num=1,skill3-ct=0,FocusPoint=65..},predicate=ship-based-pvp-datapacks:sacred-oath] at @s run scoreboard players remove @s FocusPoint 65
#4: クールタイム制御
execute as @a[scores={ship-num=1,skill3-ct=0},predicate=ship-based-pvp-datapacks:sacred-oath] at @s run scoreboard players set @s skill3-ct 40
execute as @a[scores={ship-num=1,skill3-ct=..5,FocusPoint=..64}] at @s run scoreboard players set @s skill3-ct 5
