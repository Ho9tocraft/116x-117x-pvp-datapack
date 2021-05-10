#ベーシックな覚醒
#所持職業: 1, 2, 3, 8
#効果: 覚醒中は攻撃力上昇Ⅳ（持たざる者は攻撃力上昇Ⅴ+耐性Ⅳ+移動速度上昇Ⅳ）付与

execute as @a[scores={ship-num=1..,awake_gauge=800..1600},predicate=ship-based-pvp-datapacks:awake_skill,tag=!awake] at @s run tag @s add awake

#騎士、傭兵、戦士
execute as @a[scores={ship-num=1..3,awake_gauge=1..},tag=awake] at @s run effect give @s strength 4 3 false

#持たざる者
execute as @a[scores={ship-num=8,awake_gauge=1..},tag=awake] at @s run effect give @s strength 4 4 false
execute as @a[scores={ship-num=8,awake_gauge=1..},tag=awake] at @s run effect give @s speed 4 3 false
execute as @a[scores={ship-num=8,awake_gauge=1..},tag=awake] at @s run effect give @s resistance 4 3 false

execute as @a[scores={ship-num=1..,awake_gauge=1..},tag=awake] at @s run scoreboard players remove @s awake_gauge 1
function ship-based-pvp-datapacks:trigger-process/ultimate_after
