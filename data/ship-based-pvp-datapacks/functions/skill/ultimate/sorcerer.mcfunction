#魔術師専用の覚醒
#所持職業: 5
#効果: 覚醒中はFPが全回復状態になる&攻撃力上昇Ⅲ(0:03)&採掘速度上昇Ⅲ(1:00)&耐性Ⅲ(0:03)付与&致死の白霧のCT削減

execute as @a[scores={ship-num=5,awake_gauge=1..},tag=awake] at @s run effect give @s strength 3 2 false
execute as @a[scores={ship-num=5,awake_gauge=1..},tag=awake] at @s run effect give @s haste 60 2 false
execute as @a[scores={ship-num=5,awake_gauge=1..},tag=awake] at @s run effect give @s resistance 3 2 false
execute as @a[scores={ship-num=5,awake_gauge=1..},tag=awake] at @s run scoreboard players set @s FocusPoint 300
execute as @a[scores={ship-num=5,awake_gauge=1..,skill3-ct=1..},tag=awake] at @s if score #Helper tick-sec_conv matches 5 run scoreboard players remove @s skill3-ct 1

