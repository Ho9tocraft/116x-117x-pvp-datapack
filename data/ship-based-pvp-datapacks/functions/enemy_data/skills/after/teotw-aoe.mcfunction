#region ループ部
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue,type=!#ship-based-pvp-datapacks:undead] at @s if entity @a[tag=EndOfWorld] run effect give @s instant_damage 1 1 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue,type=!#ship-based-pvp-datapacks:undead] at @s if entity @a[tag=EndOfWorld] run effect give @s instant_health 1 1 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @r[tag=EndOfWorld] at @s run tag @s remove EndOfWorld
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s if entity @a[tag=EndOfWorld] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/teotw-aoe 1s
#endregion
