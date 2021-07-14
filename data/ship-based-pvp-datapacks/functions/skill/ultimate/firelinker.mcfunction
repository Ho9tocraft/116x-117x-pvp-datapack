#火継ぎの魂振専用覚醒
#所持職業: 6
#効果: 覚醒中はFP全回復&HP高速リジェネ&移動速度上昇Ⅳ(0:30)&水中移動速度上昇(0:03)&自機中心半径4mにAoE展開(敵味方識別あり)
#regulation 1.3.1: 覚醒技を大幅ナーフ。即時ダメージ量低減、再生をⅣにダウングレード。半径を4mに縮小

execute as @a[scores={ship-num=6,awake_gauge=1..},tag=awake] at @s run effect give @s regeneration 4 3 false
execute as @a[scores={ship-num=6,awake_gauge=1..},tag=awake] at @s run effect give @s speed 30 3 false
execute as @a[scores={ship-num=6,awake_gauge=1..},tag=awake] at @s run effect give @s dolphins_grace 30 0 false
execute as @a[scores={ship-num=6,awake_gauge=1..},tag=awake] at @s run scoreboard players set @s FocusPoint 250
execute as @a[scores={ship-num=6,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..4] at @s run effect give @s instant_damage 1 1 false
execute as @a[scores={ship-num=6,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..4] at @s run effect give @s instant_damage 1 1 false
execute as @a[scores={ship-num=6,awake_gauge=1..},tag=awake] at @s run particle dust 0.000 0.980 0.604 1 ~ ~1 ~ 5 5 5 1 500 normal @a[distance=..30]
