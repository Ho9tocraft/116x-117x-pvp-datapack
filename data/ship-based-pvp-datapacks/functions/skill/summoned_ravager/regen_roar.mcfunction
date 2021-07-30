#regen roar（再生の咆哮）
execute as @s at @s run playsound entity.ravager.celebrate player @a[distance=..15] ~ ~ ~ 90 1.0 0.5
execute if entity @s[team=Red] as @e[team=Red,distance=..15] at @s run effect give @s regeneration 30 4 false
execute if entity @s[team=Blue] as @e[team=Blue,distance=..15] at @s run effect give @s regeneration 30 4 false
