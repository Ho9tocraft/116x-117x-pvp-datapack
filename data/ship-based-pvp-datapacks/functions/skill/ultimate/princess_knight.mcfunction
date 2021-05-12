#姫騎士専用覚醒
#効果: 覚醒中は常にSTが満タン&HP高速リジェネ&周囲の味方にHPリジェネ付与（自分除く）

execute as @a[scores={ship-num=11,awake_gauge=1..},tag=awake] at @s run effect give @s regeneration 4 9 false
execute as @a[scores={ship-num=11,awake_gauge=1..},tag=awake] at @s run effect give @s saturation 80 9 false
execute as @a[scores={ship-num=11,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Red,distance=1..5] at @s run effect give @s regeneration 30 3 false
execute as @a[scores={ship-num=11,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Blue,distance=1..5] at @s run effect give @s regeneration 30 3 false

