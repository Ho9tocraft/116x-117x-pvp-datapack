#thunder roar（雷霆の咆哮）
execute as @s at @s run playsound entity.ravager.attack player @a[distance=..15] ~ ~ ~
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 1 false
execute as @s[team=Red] at @s as @e[team=Blue,distance=..15,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 1 false
execute as @s[team=Blue] at @s as @e[team=Red,distance=..15] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
execute as @s[team=Blue] at @s as @e[team=Red,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 1 false
execute as @s[team=Blue] at @s as @e[team=Red,distance=..15,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 1 false
