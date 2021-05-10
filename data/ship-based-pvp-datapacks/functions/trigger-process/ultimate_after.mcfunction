#覚醒終了後のデメリット、及び覚醒ゲージの回復
#1. 30秒間攻撃力が弱体化する（Ⅲ）※火継ぎの魂振には効果がない
#2. 45秒間攻撃速度が低下する（Ⅳ）※戦士には効果がない
#3. 15秒間移動速度が低下する（Ⅴ）※持たざる者には効果がない
#4. 45秒間FPが0になる　※火継ぎの魂振、やつしの狩人、持たざる者には効果がない

execute as @a[scores={awake_gauge=0},tag=awake] at @s unless score @s ship-num matches 6 run effect give @s weakness 30 2 false
execute as @a[scores={awake_gauge=0},tag=awake] at @s unless score @s ship-num matches 3 run effect give @s mining_fatigue 45 3 false
execute as @a[scores={awake_gauge=0},tag=awake] at @s unless score @s ship-num matches 8 run effect give @s slowness 15 4 false
execute as @a[scores={awake_gauge=0},tag=awake] at @s unless score @s ship-num matches 6..8 run tag @s add awake_lostfp
execute as @a[scores={awake_gauge=0},tag=awake] at @s unless score @s ship-num matches 6..8 run schedule function ship-based-pvp-datapacks:trigger-process/ultimate_after_after 45s
execute as @a[scores={awake_gauge=0},tag=awake] at @s run tag @s remove awake

execute as @a[tag=awake_lostfp] at @s run scoreboard players set @s FocusPoint 0

