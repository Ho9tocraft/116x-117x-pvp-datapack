#嵐の落雷 ダメージ判定ループ用
execute as @e[tag=Thunder_Over,team=Blue] at @s as @e[team=Blue,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 10 0 false
execute as @e[tag=Thunder_Over,team=Blue] at @s as @e[team=Blue,distance=..15,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 10 0 false
execute as @e[tag=Thunder_Over,team=Blue] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
execute as @e[tag=Thunder_Over,team=Blue,predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run tag @s remove Thunder_Over
execute if entity @e[tag=Thunder_Over,team=Blue] run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/thunder-storm-roopticks 1s

