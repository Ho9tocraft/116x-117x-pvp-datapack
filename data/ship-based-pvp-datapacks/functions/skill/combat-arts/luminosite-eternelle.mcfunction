#我が神はここにありて(#7)
#region チーム別無敵付与、及びアペンド的防御バフ付与（30 sec）
## 赤チーム
execute as @a[scores={ship-num=18,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle,team=Red] at @s as @e[team=Red,distance=..30] at @s run effect give @s resistance 10 4 false
execute as @a[scores={ship-num=18,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle,team=Red] at @s as @e[team=Red,distance=..30] at @s run effect give @s fire_resistance 10 4 false
execute as @a[scores={ship-num=18,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle,team=Red] at @s as @e[team=Red,distance=..30] at @s run effect give @s regeneration 2 9 false
execute as @a[scores={ship-num=18,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle,team=Red] at @s as @e[team=Red,distance=..30] at @s run tag @s add LUMINOSITE_ETERNELLE_Red
## 青チーム
execute as @a[scores={ship-num=18,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle,team=Blue] at @s as @e[team=Blue,distance=..30] at @s run effect give @s resistance 10 4 false
execute as @a[scores={ship-num=18,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle,team=Blue] at @s as @e[team=Blue,distance=..30] at @s run effect give @s fire_resistance 10 4 false
execute as @a[scores={ship-num=18,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle,team=Blue] at @s as @e[team=Blue,distance=..30] at @s run effect give @s regeneration 2 9 false
execute as @a[scores={ship-num=18,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle,team=Blue] at @s as @e[team=Blue,distance=..30] at @s run tag @s add LUMINOSITE_ETERNELLE_Blue
#endregion

#region 自身へのデメリット付与＆スケジュール設定
execute as @a[scores={ship-num=13,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle] at @s run schedule function ship-based-pvp-datapacks:trigger-process/luminosite-eternelle-afterburner 201t append
execute as @a[scores={ship-num=13,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle] at @s run function ship-based-pvp-datapacks:trigger-process/stun_effect
execute as @a[scores={ship-num=13,FocusPoint=20..,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle] at @s run scoreboard players remove @s FocusPoint 20
execute as @a[scores={ship-num=13,skill3-ct=0},predicate=ship-based-pvp-datapacks:luminosite-eternelle] at @s run scoreboard players set @s skill3-ct 80
#endregion
