#再生能力ギミック
execute if entity @s[team=Red] as @e[team=Red,distance=..10] at @s run effect give @s regeneration 15 3 false
execute if entity @s[team=Blue] as @e[team=Blue,distance=..10] at @s run effect give @s regeneration 15 3 false
