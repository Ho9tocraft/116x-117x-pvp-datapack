#ザ・レゾナンスエイジ
#region デバフ解除
## 赤
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect clear @s hunger
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect clear @s mining_fatigue
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect clear @s nausea
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect clear @s poison
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect clear @s slowness
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect clear @s unluck
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect clear @s weakness
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect clear @s wither

## 青
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect clear @s hunger
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect clear @s mining_fatigue
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect clear @s nausea
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect clear @s poison
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect clear @s slowness
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect clear @s unluck
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect clear @s weakness
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect clear @s wither
#endregion
#region バフ付与
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Red,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Red,distance=..15] at @s run effect give @s strength 20 1 false
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},team=Blue,predicate=ship-based-pvp-datapacks:the-resonance-age] at @s as @a[team=Blue,distance=..15] at @s run effect give @s strength 20 1 false
#endregion
#region 確認処理
execute as @a[scores={ship-num=14,skill3-ct=0,FocusPoint=30..},predicate=ship-based-pvp-datapacks:the-resonance-age] at @s run scoreboard players remove @s FocusPoint 30
execute as @a[scores={ship-num=14,skill3-ct=0},predicate=ship-based-pvp-datapacks:the-resonance-age] at @s run scoreboard players set @s skill3-ct 30
execute as @a[scores={ship-num=14,skill3-ct=..5,FocusPoint=..29}] at @s run scoreboard players set @s skill3-ct 5
#endregion
