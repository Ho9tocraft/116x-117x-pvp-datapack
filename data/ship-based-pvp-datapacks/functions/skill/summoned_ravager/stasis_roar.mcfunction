#stasis roar（絶対停止の咆哮）
execute as @s at @s run playsound entity.ravager.roar player @a[distance=..15]
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15] at @s run effect give @s blindness 10 255 false
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15] at @s run effect give @s jump_boost 10 230 false
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15] at @s run effect give @s mining_fatigue 10 255 false
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15] at @s run effect give @s slowness 10 255 false
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15] at @s run effect give @s weakness 10 255 false
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15] at @s run tellraw @s {"text":"\u30b0\u30aa\u30aa\u30aa\u30a9\u30a9\u30a9\uff01\uff01","color":"red"}

execute as @s[team=Blue] at @s as @e[team=Red,distance=..15] at @s run effect give @s blindness 10 255 false
execute as @s[team=Blue] at @s as @e[team=Red,distance=..15] at @s run effect give @s jump_boost 10 230 false
execute as @s[team=Blue] at @s as @e[team=Red,distance=..15] at @s run effect give @s mining_fatigue 10 255 false
execute as @s[team=Blue] at @s as @e[team=Red,distance=..15] at @s run effect give @s slowness 10 255 false
execute as @s[team=Blue] at @s as @e[team=Red,distance=..15] at @s run effect give @s weakness 10 255 false
execute as @s[team=Blue] at @s as @e[team=Red,distance=..15] at @s run tellraw @s {"text":"\u30b0\u30aa\u30aa\u30aa\u30a9\u30a9\u30a9\uff01\uff01","color":"blue"}
