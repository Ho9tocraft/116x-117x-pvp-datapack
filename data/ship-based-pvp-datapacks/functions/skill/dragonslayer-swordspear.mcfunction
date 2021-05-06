#竜狩りの剣槍戦技「落雷」
#1.落雷のターゲット判定を実施
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Red] at @s as @e[team=Blue,distance=..45,sort=random,limit=1] run tag @s add target_dsss_lightning_red
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Blue] at @s as @e[team=Red,distance=..45,sort=random,limit=1] run tag @s add target_dsss_lightning_blue
#2.落雷のターゲットに雷を落とす。（LB）
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Red] at @s as @e[tag=target_dsss_lightning_red] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Blue] at @s as @e[tag=target_dsss_lightning_blue] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
#3.落雷のターゲットに（ry（エフェクト）
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Red] at @s as @e[tag=target_dsss_lightning_red] at @s run effect give @s instant_damage 60 3 false
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Red] at @s as @e[tag=target_dsss_lightning_red] at @s run effect give @s slowness 3 3 false
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Red] at @s as @e[tag=target_dsss_lightning_red] at @s run effect give @s mining_fatigue 3 3 false
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Red] at @s as @e[tag=target_dsss_lightning_red] at @s run effect give @s wither 3 9 false
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Blue] at @s as @e[tag=target_dsss_lightning_blue] at @s run effect give @s instant_damage 60 3 false
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Blue] at @s as @e[tag=target_dsss_lightning_blue] at @s run effect give @s slowness 3 3 false
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Blue] at @s as @e[tag=target_dsss_lightning_blue] at @s run effect give @s mining_fatigue 3 3 false
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear,team=Blue] at @s as @e[tag=target_dsss_lightning_blue] at @s run effect give @s wither 3 9 false
#4.-6. 
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear] at @s run schedule function ship-based-pvp-datapacks:trigger-process/dsss_ab 3s
#7. CTを設定
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear] at @s run scoreboard players set @s skill3-ct 30
#EXTRA. 姫騎士以外の竜狩りの剣槍を削除
execute as @a[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:dragonslayer-swordspear] at @s unless score @s ship-num matches 11 run clear @s golden_sword{citTexture:NamelessKing} 1


