#呪詛
execute as @s at @s as @a[distance=..10] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~
execute as @s[team=Red] at @s as @e[distance=..10,team=Blue] at @s run effect give @s instant_damage 1 3 false
execute as @s[team=Blue] at @s as @e[distance=..10,team=Red] at @s run effect give @s instant_damage 1 3 false
execute as @s at @s run effect give @s instant_damage 1 2 false
