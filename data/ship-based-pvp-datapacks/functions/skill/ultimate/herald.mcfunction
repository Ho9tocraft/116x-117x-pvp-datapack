#伝令専用の覚醒
#所持職業: 4
#効果: 覚醒中は水中移動速度が上昇＆水中呼吸状態になる

execute as @a[scores={ship-num=4,awake_gauge=1..},tag=awake] at @s run effect give @s conduit_power 4 3 false
execute as @a[scores={ship-num=4,awake_gauge=1..},tag=awake] at @s run effect give @s dolphins_grace 4 3 false
execute as @a[scores={ship-num=4,awake_gauge=1..},tag=awake] at @s if block ~ ~ ~ water run effect give @s resistance 4 3 false
execute as @a[scores={ship-num=4,awake_gauge=1..},tag=awake] at @s run effect give @s fire_resistance 4 3 false

