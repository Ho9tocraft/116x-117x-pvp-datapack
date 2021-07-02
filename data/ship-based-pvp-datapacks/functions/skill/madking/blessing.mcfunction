#加護バフ
execute as @s at @s as @a[distance=..10] at @s run playsound minecraft:entity.horse.death player @s ~ ~ ~
execute as @s at @s run effect give @s resistance 30 3 false
execute as @s at @s run effect give @s fire_resistance 30 3 false
execute as @s at @s run effect give @s regeneration 30 3 false

