#ベーシックな覚醒
#所持職業: 1, 2, 3, 8, 10
#効果: 覚醒中は攻撃力上昇付与

execute as @a[scores={ship-num=1..,awake_gauge=800..1600},predicate=ship-based-pvp-datapacks:awake_skill,tag=!awake] at @s run tellraw @a ["",{"selector":"@s","bold":true},{"text":"\u304c\u899a\u9192\u3092\u4f7f\u7528\u3057\u305f\uff01","bold":true}]
execute as @a[scores={ship-num=1..,awake_gauge=800..1600},predicate=ship-based-pvp-datapacks:awake_skill,tag=!awake] at @s run tag @s add awake

#騎士、傭兵、戦士（攻撃力上昇Ⅳ）
execute as @a[scores={ship-num=1..3,awake_gauge=1..},tag=awake] at @s run effect give @s strength 4 3 false

#持たざる者（攻撃力Ⅴ、移動速度Ⅳ、耐性Ⅳ）
execute as @a[scores={ship-num=8,awake_gauge=1..},tag=awake] at @s run effect give @s strength 4 4 false
execute as @a[scores={ship-num=8,awake_gauge=1..},tag=awake] at @s run effect give @s speed 4 3 false
execute as @a[scores={ship-num=8,awake_gauge=1..},tag=awake] at @s run effect give @s resistance 4 3 false
#暗月の剣（攻撃力Ⅲ、攻撃速度Ⅳ、移動速度Ⅱ）
execute as @a[scores={ship-num=10,awake_gauge=1..},tag=awake] at @s run effect give @s strength 4 2 false
execute as @a[scores={ship-num=10,awake_gauge=1..},tag=awake] at @s run effect give @s haste 4 3 false
execute as @a[scores={ship-num=10,awake_gauge=1..},tag=awake] at @s run effect give @s speed 4 1 false

execute as @a[scores={ship-num=1..,awake_gauge=1..},tag=awake] at @s run scoreboard players remove @s awake_gauge 1
#全覚醒共通: CT短縮（半減）
execute as @a[scores={ship-num=1..,awake_gauge=1..,skill3-ct=1..},tag=awake] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill3-ct 1
execute as @a[scores={ship-num=1..,awake_gauge=1..,skill2-ct=1..},tag=awake] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill2-ct 1
execute as @a[scores={ship-num=1..,awake_gauge=1..,skill1-ct=1..},tag=awake] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players remove @s skill1-ct 1
function ship-based-pvp-datapacks:trigger-process/ultimate_after
