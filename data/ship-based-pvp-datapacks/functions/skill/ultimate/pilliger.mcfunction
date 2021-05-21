#略奪者専用覚醒
#効果: 覚醒中は被ダメージ軽減&満腹度全快
execute as @a[scores={ship-num=9,awake_gauge=1..},tag=awake] at @s run effect give @s resistance 4 3 false
execute as @a[scores={ship-num=9,awake_gauge=1..},tag=awake] at @s run effect give @s saturation 80 3 false

