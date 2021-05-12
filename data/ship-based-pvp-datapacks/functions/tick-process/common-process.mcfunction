#FPの自動回復: FPは勝手に回復する。しかし、回復する確率は25%/sec(FPが重要すぎる要素である火継ぎの魂振・やつしの狩人のみ50%/sec、魔法使い系は33％/sec)。必ずしも回復するとは限らない。
#　　　　　　　2021/04/12: やつしの狩人のFP回復速度を上昇、毎秒回復+ボーナスに。
execute as @a[scores={ship-num=1..2,FocusPoint=..149},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=3,FocusPoint=..99},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=4,FocusPoint=..199},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=5,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=6,FocusPoint=..249},predicate=ship-based-pvp-datapacks:focus-point-autoregen-hunter] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=7,FocusPoint=..249}] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=7,FocusPoint=..249},predicate=ship-based-pvp-datapacks:focus-point-autoregen-hunter] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=8,FocusPoint=..99},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=11,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen-hunter] at @s run scoreboard players add @s FocusPoint 1


#与ダメ観測: ship-num=6のみ、攻撃する度にFPが減る。FP5未満で完全に攻撃不能になる。また、FP100未満で攻撃力4低下
execute as @a[scores={ship-num=6,FocusPoint=5..,attack-det=1..}] at @s run scoreboard players remove @s FocusPoint 5
execute as @a[scores={ship-num=6,FocusPoint=5..99}] at @s run effect give @s weakness 1 0 true
execute as @a[scores={ship-num=6,FocusPoint=..4}] at @s run effect give @s weakness 1 255 true
execute as @a[scores={ship-num=6,FocusPoint=..4}] at @s run effect give @s mining_fatigue 1 255 true
execute as @a[scores={attack-det=1..}] at @s run scoreboard players set @s attack-det 0

