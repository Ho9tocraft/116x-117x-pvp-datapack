#ランダムターゲット強攻撃
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue,sort=random,limit=1] at @s run tag @s add BLU_RANDOMTARGET_PHASE3
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue,tag=BLU_RANDOMTARGET_PHASE3] at @s run effect give @s[type=!#ship-based-pvp-datapacks:undead] instant_damage 1 4
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue,tag=BLU_RANDOMTARGET_PHASE3] at @s run effect give @s[type=#ship-based-pvp-datapacks:undead] instant_health 1 4
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue,tag=BLU_RANDOMTARGET_PHASE3] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s as @e[team=Blue,tag=BLU_RANDOMTARGET_PHASE3] at @s run tag @s remove BLU_RANDOMTARGET_PHASE3
