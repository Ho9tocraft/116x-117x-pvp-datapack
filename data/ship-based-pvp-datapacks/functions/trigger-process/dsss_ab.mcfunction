#4-1.落雷のターゲットに（ry（AoE）
# Pos 0: X=0 Y=0 Z=0(Origin)
execute as @e[tag=target_dsss_lightning_red] at @s run summon armor_stand ~ ~ ~ {Team:"Red",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_red"]}
execute as @e[tag=target_dsss_lightning_blue] at @s run summon armor_stand ~ ~ ~ {Team:"Blue",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_blue"]}
# Pos 1: X=0 Y=0 Z=6
execute as @e[type=armor_stand,tag=dsss_aoe_red] at @s run summon armor_stand ^ ^ ^6 {Team:"Red",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_red_C"]}
execute as @e[type=armor_stand,tag=dsss_aoe_blue] at @s run summon armor_stand ^ ^ ^6 {Team:"Blue",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_blue_C"]}
# Pos 2: X=5.19615 Y=0 Z=3
execute as @e[type=armor_stand,tag=dsss_aoe_red] at @s run summon armor_stand ^5.19615 ^ ^3 {Team:"Red",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_red_C"]}
execute as @e[type=armor_stand,tag=dsss_aoe_blue] at @s run summon armor_stand ^5.19615 ^ ^3 {Team:"Blue",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_blue_C"]}
# Pos 3: X=5.19615 Y=0 Z=-3
execute as @e[type=armor_stand,tag=dsss_aoe_red] at @s run summon armor_stand ^5.19615 ^ ^-3 {Team:"Red",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_red_C"]}
execute as @e[type=armor_stand,tag=dsss_aoe_blue] at @s run summon armor_stand ^5.19615 ^ ^-3 {Team:"Blue",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_blue_C"]}
# Pos 4: X=-5.19615 Y=0 Z=3
execute as @e[type=armor_stand,tag=dsss_aoe_red] at @s run summon armor_stand ^-5.19615 ^ ^3 {Team:"Red",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_red_C"]}
execute as @e[type=armor_stand,tag=dsss_aoe_blue] at @s run summon armor_stand ^-5.19615 ^ ^3 {Team:"Blue",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_blue_C"]}
# Pos 5: X=-5.19615 Y=0 Z=-3
execute as @e[type=armor_stand,tag=dsss_aoe_red] at @s run summon armor_stand ^-5.19615 ^ ^-3 {Team:"Red",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_red_C"]}
execute as @e[type=armor_stand,tag=dsss_aoe_blue] at @s run summon armor_stand ^-5.19615 ^ ^-3 {Team:"Blue",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_blue_C"]}
# Pos 6: X=0 Y=0 Z=-6
execute as @e[type=armor_stand,tag=dsss_aoe_red] at @s run summon armor_stand ^ ^ ^-6 {Team:"Red",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_red_C"]}
execute as @e[type=armor_stand,tag=dsss_aoe_blue] at @s run summon armor_stand ^ ^ ^-6 {Team:"Blue",Glowing:1b,ShowArms:0b,Small:0b,Marker:0b,Invisible:1b,Tags:["dsss_aoe_blue_C"]}
#4-2. tag remove
tag @e[tag=target_dsss_lightning_red] remove target_dsss_lightning_red
tag @e[tag=target_dsss_lightning_blue] remove target_dsss_lightning_blue
#5. 即座に落雷
execute as @e[type=armor_stand,tag=dsss_aoe_red_C] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
execute as @e[type=armor_stand,tag=dsss_aoe_red_C] at @s as @e[team=Blue,distance=..10] at @s run effect give @s instant_damage 60 3 false
execute as @e[type=armor_stand,tag=dsss_aoe_blue_C] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
execute as @e[type=armor_stand,tag=dsss_aoe_blue_C] at @s as @e[team=Red,distance=..10] at @s run effect give @s instant_damage 60 3 false
#6. armor_standを削除
kill @e[team=Red,type=armor_stand]
kill @e[team=Blue,type=armor_stand]
