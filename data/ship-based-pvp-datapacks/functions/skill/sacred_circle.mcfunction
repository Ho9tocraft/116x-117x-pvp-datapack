#セイクリ
#基本形は『太陽の光の癒し』と同じ
#region 回復効果
execute as @a[scores={ship-num=14,skill1-ct=0,FocusPoint=53..},predicate=ship-based-pvp-datapacks:sacred-circle,team=Red] at @s as @e[team=Red,distance=..8,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 8 false
execute as @a[scores={ship-num=14,skill1-ct=0,FocusPoint=53..},predicate=ship-based-pvp-datapacks:sacred-circle,team=Blue] at @s as @e[team=Blue,distance=..8,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 8 false
execute as @a[scores={ship-num=14,skill1-ct=0,FocusPoint=53..},predicate=ship-based-pvp-datapacks:sacred-circle,team=Red] at @s as @e[team=Red,distance=..8,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 8 false
execute as @a[scores={ship-num=14,skill1-ct=0,FocusPoint=53..},predicate=ship-based-pvp-datapacks:sacred-circle,team=Blue] at @s as @e[team=Blue,distance=..8,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 8 false
#endregion
#region 演出パーティクル
execute as @a[scores={ship-num=14,skill1-ct=0,FocusPoint=53..},predicate=ship-based-pvp-datapacks:sacred-circle] at @s run particle dust 0 0.635 1 1 ~ ~ ~ 8.0 8.0 8.0 1 800 normal @a
#endregion
#region FP消費（原作と同じ53）&CT 20sec
execute as @a[scores={ship-num=14,skill1-ct=0,FocusPoint=53..},predicate=ship-based-pvp-datapacks:sacred-circle] at @s run scoreboard players remove @s FocusPoint 53
execute as @a[scores={ship-num=14,skill1-ct=0},predicate=ship-based-pvp-datapacks:sacred-circle] at @s run scoreboard players set @s skill1-ct 20
execute as @a[scores={ship-num=14,skill1-ct=..5,FocusPoint=..52}] at @s run scoreboard players set @s skill1-ct 5
#endregion

