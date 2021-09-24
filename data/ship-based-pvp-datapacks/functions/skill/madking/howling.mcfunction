#咆哮
execute as @s at @s as @a[distance=..10] at @s run playsound minecraft:entity.donkey.death player @s ~ ~ ~
execute as @s at @s run effect give @s resistance 15 0 false
execute as @s[team=Red] at @s positioned ^ ^ ^5 as @e[team=Blue,distance=..5] at @s run effect give @s instant_damage 5 1 false
execute as @s[team=Blue] at @s positioned ^ ^ ^5 as @e[team=Red,distance=..5] at @s run effect give @s instant_damage 5 1 false
#※TPコマンドを利用して、半ば強引に吹き飛ばしている。
execute as @s[team=Red] at @s positioned ^ ^ ^5 as @e[team=Blue,distance=..5] at @s facing entity @s feet if block ^ ^0.5 ^-2 minecraft:air run tp @s ^ ^0.5 ^-2
execute as @s[team=Blue] at @s positioned ^ ^ ^5 as @e[team=Red,distance=..5] at @s run tp @s ^ ^0.5 ^-2

