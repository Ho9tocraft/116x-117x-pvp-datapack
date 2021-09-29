#フェイズシフト
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s store result score @s health-enemy run data get entity @s Health
# Phase 1
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s if score @s health-enemy matches 7001.. run function ship-based-pvp-datapacks:enemy_data/skills/phase_1/meteor-enemy-skill
# Phase 2
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s if score @s health-enemy matches 4001..7000 run function ship-based-pvp-datapacks:enemy_data/skills/phase_2/spiritual-blade
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s if score @s health-enemy matches 1..7000 run function ship-based-pvp-datapacks:enemy_data/skills/phase_2/awake
# Phase 3
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s if score @s health-enemy matches 1..4000 run function ship-based-pvp-datapacks:enemy_data/skills/phase_3/the-end-of-the-world
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s if score @s health-enemy matches 1..4000 run function ship-based-pvp-datapacks:enemy_data/skills/phase_3/time-access
