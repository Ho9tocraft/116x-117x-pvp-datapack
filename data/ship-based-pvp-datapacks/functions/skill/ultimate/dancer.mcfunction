#バニーダンサー専用
#効果: 覚醒中は半径4mの味方のFPを100まで回復する
execute as @a[scores={ship-num=14,awake_gauge=1..},tag=awake,team=Red] at @s as @a[team=Red,distance=..4,scores={FocusPoint=..99}] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,awake_gauge=1..},tag=awake,team=Blue] at @s as @a[team=Blue,distance=..4,scores={FocusPoint=..99}] at @s run scoreboard players add @s FocusPoint 1
