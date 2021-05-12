#太陽の光の癒し
#半径は中量ローリング約3.2回（フィリアノール聖鈴）とのこと。
#(´北｀)何言ってるのか分からない。メートルで出せよメートルで
#…と言いたくなったので仮定的に2.5m/ロリとした。
#つまりどういうことだって？
#2.5×3.2＝8
#8mですよろしくおねがいします

#ship id: 6(the soulbounded firelinker)
#1: 抽出しつつ半径計算（distance=..8, teamも個別で見る）
execute as @a[scores={ship-num=6,skill2-ct=0,FocusPoint=80..},predicate=ship-based-pvp-datapacks:soothing-sunlight,team=Red] at @s as @e[team=Red,distance=..8,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 5 false
execute as @a[scores={ship-num=6,skill2-ct=0,FocusPoint=80..},predicate=ship-based-pvp-datapacks:soothing-sunlight,team=Blue] at @s as @e[team=Blue,distance=..8,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 5 false
execute as @a[scores={ship-num=6,skill2-ct=0,FocusPoint=80..},predicate=ship-based-pvp-datapacks:soothing-sunlight,team=Red] at @s as @e[team=Red,distance=..8,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 5 false
execute as @a[scores={ship-num=6,skill2-ct=0,FocusPoint=80..},predicate=ship-based-pvp-datapacks:soothing-sunlight,team=Blue] at @s as @e[team=Blue,distance=..8,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 5 false
#1.5: 演出パーティクル
execute as @a[scores={ship-num=6,skill2-ct=0,FocusPoint=80..},predicate=ship-based-pvp-datapacks:soothing-sunlight] at @s run particle dust 0.953 0.596 0.000 1 ~ ~ ~ 8.0 8.0 8.0 1 800 normal @a
#2: 使用者は追加で回復（範囲はない）
execute as @a[scores={ship-num=6,skill2-ct=0,FocusPoint=80..},predicate=ship-based-pvp-datapacks:soothing-sunlight] at @s run effect give @s instant_health 1 7 true
#3: FP消費（原作と同じ80）&CT 15sec
execute as @a[scores={ship-num=6,skill2-ct=0,FocusPoint=80..},predicate=ship-based-pvp-datapacks:soothing-sunlight] at @s run scoreboard players remove @s FocusPoint 80
execute as @a[scores={ship-num=6,skill2-ct=0},predicate=ship-based-pvp-datapacks:soothing-sunlight] at @s run scoreboard players set @s skill2-ct 15


#ship id:11(princess knight)
#1: 抽出しつつ半径計算（distance=..8, teamも個別で見る）
execute as @a[scores={ship-num=11,skill2-ct=0,FocusPoint=64..},predicate=ship-based-pvp-datapacks:soothing-sunlight,team=Red] at @s as @e[team=Red,distance=..8,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 6 false
execute as @a[scores={ship-num=11,skill2-ct=0,FocusPoint=64..},predicate=ship-based-pvp-datapacks:soothing-sunlight,team=Blue] at @s as @e[team=Blue,distance=..8,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 6 false
execute as @a[scores={ship-num=11,skill2-ct=0,FocusPoint=64..},predicate=ship-based-pvp-datapacks:soothing-sunlight,team=Red] at @s as @e[team=Red,distance=..8,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 6 false
execute as @a[scores={ship-num=11,skill2-ct=0,FocusPoint=64..},predicate=ship-based-pvp-datapacks:soothing-sunlight,team=Blue] at @s as @e[team=Blue,distance=..8,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 6 false
#1.5: 演出パーティクル
execute as @a[scores={ship-num=11,skill2-ct=0,FocusPoint=64..},predicate=ship-based-pvp-datapacks:soothing-sunlight] at @s run particle dust 0.953 0.596 0.000 1 ~ ~ ~ 8.0 8.0 8.0 1 800 normal @a
#2: 使用者は追加で回復（範囲はない）
execute as @a[scores={ship-num=11,skill2-ct=0,FocusPoint=64..},predicate=ship-based-pvp-datapacks:soothing-sunlight] at @s run effect give @s instant_health 1 8 true
#3: FP消費（原作と同じ64）&CT 15sec
execute as @a[scores={ship-num=11,skill2-ct=0,FocusPoint=64..},predicate=ship-based-pvp-datapacks:soothing-sunlight] at @s run scoreboard players remove @s FocusPoint 64
execute as @a[scores={ship-num=11,skill2-ct=0},predicate=ship-based-pvp-datapacks:soothing-sunlight] at @s run scoreboard players set @s skill2-ct 20
