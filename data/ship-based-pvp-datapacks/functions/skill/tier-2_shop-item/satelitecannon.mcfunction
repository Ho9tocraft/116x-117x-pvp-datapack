#サテキャ
#赤->青
execute as @a[scores={skill3-ct=0},team=Red,predicate=ship-based-pvp-datapacks:tier-2_items/satelite_cannon] at @s as @e[sort=furthest,limit=1,team=Blue] at @s as @e[distance=..30,team=Blue] at @s run effect give @s instant_damage 1 3 false
execute as @a[scores={skill3-ct=0},team=Red,predicate=ship-based-pvp-datapacks:tier-2_items/satelite_cannon] at @s as @e[sort=furthest,limit=1,team=Blue] at @s as @e[distance=..30,team=Blue] at @s run effect give @s wither 10 3 false
#青->赤
execute as @a[scores={skill3-ct=0},team=Blue,predicate=ship-based-pvp-datapacks:tier-2_items/satelite_cannon] at @s as @e[sort=furthest,limit=1,team=Red] at @s as @e[distance=..30,team=Red] at @s run effect give @s instant_damage 1 3 false
execute as @a[scores={skill3-ct=0},team=Blue,predicate=ship-based-pvp-datapacks:tier-2_items/satelite_cannon] at @s as @e[sort=furthest,limit=1,team=Red] at @s as @e[distance=..30,team=Red] at @s run effect give @s wither 10 3 false
#Effect（土埃）
execute as @a[scores={skill3-ct=0},team=Red,predicate=ship-based-pvp-datapacks:tier-2_items/satelite_cannon] at @s as @e[sort=furthest,limit=1,team=Blue] at @s as @e[distance=..30,team=Blue] at @s run particle campfire_cosy_smoke ~ ~ ~ 5 5 5 0 100000 normal
execute as @a[scores={skill3-ct=0},team=Blue,predicate=ship-based-pvp-datapacks:tier-2_items/satelite_cannon] at @s as @e[sort=furthest,limit=1,team=Red] at @s as @e[distance=..30,team=Red] at @s run particle campfire_cosy_smoke ~ ~ ~ 5 5 5 0 100000 normal
#CT制御（30s）
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:tier-2_items/satelite_cannon] at @s run scoreboard players set @s skill3-ct 30
execute as @a[scores={skill3-ct=30},predicate=ship-based-pvp-datapacks:tier-2_items/satelite_cannon] at @s run clear @s iron_horse_armor{citTexture:satelite} 1
