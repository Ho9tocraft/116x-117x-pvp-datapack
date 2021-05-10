#やつしの狩人専用覚醒
#効果: 覚醒中は常に「古い狩人の遺骨」状態になる

execute as @a[scores={ship-num=7,awake_gauge=1..},tag=awake] at @s run effect give @s speed 3 3 false
execute as @a[scores={ship-num=7,awake_gauge=1..},tag=awake] at @s run effect give @s jump_boost 3 3 false
execute as @a[scores={ship-num=7,awake_gauge=1..},tag=awake] at @s run effect give @s regeneration 3 3 false
