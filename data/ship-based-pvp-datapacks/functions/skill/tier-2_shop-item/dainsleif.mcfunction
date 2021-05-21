#ダインスレイヴ

#赤->青
execute as @a[scores={skill3-ct=0},team=Red,predicate=ship-based-pvp-datapacks:tier-2_items/dainsleif] at @s as @e[sort=random,limit=1,team=Blue,distance=..90] at @s run tag @s add dainsleif
#青->赤
execute as @a[scores={skill3-ct=0},team=Blue,predicate=ship-based-pvp-datapacks:tier-2_items/dainsleif] at @s as @e[sort=random,limit=1,team=Red,distance=..90] at @s run tag @s add dainsleif
#共通
execute as @e[tag=dainsleif] at @s run effect give @s blindness 180 9 false
execute as @e[tag=dainsleif] at @s run effect give @s glowing 180 0 false
execute as @e[tag=dainsleif] at @s run effect give @s slowness 180 255 false
execute as @e[tag=dainsleif] at @s run effect give @s instant_damage 50 2 false
execute as @e[tag=dainsleif] at @s run tag @s remove dainsleif
#CT制御（30s）
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:tier-2_items/dainsleif] at @s run scoreboard players set @s skill3-ct 30
execute as @a[scores={skill3-ct=30},predicate=ship-based-pvp-datapacks:tier-2_items/dainsleif] at @s run clear @s iron_horse_armor{citTexture:tsumayoji} 1
