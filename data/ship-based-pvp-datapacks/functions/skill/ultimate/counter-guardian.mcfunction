#抑止の守護者専用覚醒
#所持職業: 12
#効果: 覚醒中は攻撃力上昇、耐性、移動速度が上昇し、自身の付近（半径3m）の敵をすべて止める。
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake] at @s run effect give @s strength 4 3 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake] at @s run effect give @s resistance 4 2 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake] at @s run effect give @s speed 4 2 false

execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..3] at @s run effect give @s slowness 4 255 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..3] at @s run effect give @s mining_fatigue 4 255 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..3] at @s run effect give @s jump_boost 4 199 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..3] at @s run effect give @s weakness 8 255 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Red] at @s as @e[team=Blue,distance=..3] at @s run effect give @s blindness 4 255 false

execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..3] at @s run effect give @s slowness 4 255 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..3] at @s run effect give @s mining_fatigue 4 255 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..3] at @s run effect give @s jump_boost 4 199 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..3] at @s run effect give @s weakness 8 255 false
execute as @a[scores={ship-num=12,awake_gauge=1..},tag=awake,team=Blue] at @s as @e[team=Red,distance=..3] at @s run effect give @s blindness 4 255 false

