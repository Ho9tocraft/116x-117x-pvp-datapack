#裁定者専用覚醒(#7)
#効果: 覚醒中は被ダメージカット（40％・4 sec）＆幸運付与（4 sec）＆攻撃力UP付与（30 sec、レベル1）

execute as @a[scores={ship-num=18,awake_gauge=1..},tag=awake] at @s run effect give @s resistance 4 1 false
execute as @a[scores={ship-num=18,awake_gauge=1..},tag=awake] at @s run effect give @s luck 4 0 false
execute as @a[scores={ship-num=18,awake_gauge=1..},tag=awake] at @s run effect give @s strength 30 0 false
