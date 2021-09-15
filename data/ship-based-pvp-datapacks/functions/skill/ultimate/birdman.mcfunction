#鴉人専用覚醒技
#効果：FPをチャージし続ける(MAX3FP/t)＆衝撃吸収アーマーを展開する&自動カウンター（火継ぎの魂振より効果範囲大）＆法王の右目＆法王の左目
execute as @a[scores={ship-num=16,FocusPoint=..199,awake_gauge=1..},predicate=ship-based-pvp-datapacks:focus-point-autoregen,tag=awake] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=16,FocusPoint=..199,awake_gauge=1..},predicate=ship-based-pvp-datapacks:focus-point-autoregen,tag=awake] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=16,FocusPoint=..199,awake_gauge=1..},predicate=ship-based-pvp-datapacks:focus-point-autoregen,tag=awake] at @s run scoreboard players add @s FocusPoint 1

#何秒後に切れるか分からないので60秒
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,nbt={AbsorptionAmount:0.0F}] at @s run effect give @s absorption 60 4

#距離減衰型
#～8m: 即時ダメージⅠ（非アンデッド）／即時回復Ⅰ（アンデッド）
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..8,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 0
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..8,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 0
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..8,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 0
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..8,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 0
#根元～4m: ウィザー状態＆毒状態[10 sec]（非アンデッド）／即時回復Ⅱ（アンデッド）
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..4,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s wither 10 9
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..4,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s wither 10 9
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..4,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s poison 10 9
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..4,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s poison 10 9
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..4,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 1
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..4,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 1
execute as @a[scores={ship-num=16,awake_gauge=1..},tag=awake] at @s run particle dust 0.000 0.980 0.604 1 ~ ~1 ~ 8 8 8 1 400 normal @a[distance=..30]

#法王の右目＆左目
#与ダメージが発生した際に5秒間strength Ⅴ付与＆HPを回復
execute as @a[scores={ship-num=16,awake_gauge=1..,attack-det=1..},tag=awake] at @s run effect give @s strength 5 4 false
execute as @a[scores={ship-num=16,awake_gauge=1..,attack-det=1..},tag=awake] at @s run effect give @s instant_health 1 1 false

