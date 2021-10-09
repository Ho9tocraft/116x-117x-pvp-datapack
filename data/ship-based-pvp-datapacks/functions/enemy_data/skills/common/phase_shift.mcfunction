#フェイズシフト
execute as @e[type=skeleton,tag=Yuzuki_HandHeld] at @s store result score @s health-enemy run data get entity @s Health
# Phase 1
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready] at @s if score @s health-enemy matches 3500.. run function ship-based-pvp-datapacks:enemy_data/skills/phase_1/meteor-enemy-skill
# Phase 2
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready] at @s if score @s health-enemy matches 1501..3500 run function ship-based-pvp-datapacks:enemy_data/skills/phase_2/spiritual-blade
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready] at @s if score @s health-enemy matches 1501.. run scoreboard players set @s skill4-ct 5
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready,predicate=ship-based-pvp-datapacks:random_awake] at @s if score @s health-enemy matches 1501..3500 run function ship-based-pvp-datapacks:enemy_data/skills/phase_2/awake
# Phase 3
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted,tag=!Enrage_Ready] at @s if score @s health-enemy matches 1..1500 run function ship-based-pvp-datapacks:enemy_data/skills/phase_3/ultimate_skill
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready,predicate=ship-based-pvp-datapacks:random_awake] at @s if score @s health-enemy matches 1..1500 run function ship-based-pvp-datapacks:enemy_data/skills/phase_3/awake
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready,tag=!awake] at @s if score @s health-enemy matches 1..1500 run function ship-based-pvp-datapacks:enemy_data/skills/phase_3/the-end-of-the-world
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready,tag=awake] at @s if score @s health-enemy matches 1..1500 run function ship-based-pvp-datapacks:enemy_data/skills/phase_3/awaked/limit_break
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready,tag=!awake] at @s if score @s health-enemy matches 1..1500 run function ship-based-pvp-datapacks:enemy_data/skills/phase_3/time-access
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready,tag=awake] at @s if score @s health-enemy matches 1..1500 run function ship-based-pvp-datapacks:enemy_data/skills/phase_3/awaked/divine_timefreese
#時間切れ演出
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=Enrage] at @s if score @s health-enemy matches 1.. run scoreboard players set #Helper timer_battle 1
