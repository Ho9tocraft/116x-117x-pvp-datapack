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
execute as @a[scores={ship-num=9,FocusPoint=..249},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=10,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=11,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen-hunter] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=12,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=13,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=14,FocusPoint=..149},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=15,FocusPoint=..199},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=16,FocusPoint=..199},predicate=ship-based-pvp-datapacks:focus-point-autoregen-hunter] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=17,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=18,FocusPoint=..249},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=19,FocusPoint=..249},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=20,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen-shootingsoul] at @s run scoreboard players add @s FocusPoint 1


#与ダメ観測: ship-num=6（火継ぎの魂振）のみ、攻撃する度にFPが減る。FP5未満で完全に攻撃不能になる。また、FP100未満で攻撃力4低下
#　逆に、FP150以上の時は攻撃力にブースト効果が乗るように調整
execute as @a[scores={ship-num=2,attack-det=1..}] at @s run effect give @s resistance 2 1 false
execute as @a[scores={ship-num=6,FocusPoint=5..,attack-det=1..}] at @s run scoreboard players remove @s FocusPoint 5
execute as @a[scores={ship-num=6,FocusPoint=150..}] at @s run effect give @s strength 2 1 false
execute as @a[scores={ship-num=6,FocusPoint=5..99}] at @s run effect give @s weakness 1 0 true
execute as @a[scores={ship-num=6,FocusPoint=..4}] at @s run effect give @s weakness 1 255 true
execute as @a[scores={ship-num=6,FocusPoint=..4}] at @s run effect give @s mining_fatigue 1 255 true
execute as @a[scores={attack-det=1..}] at @s run scoreboard players set @s attack-det 0


#region 水中突入時ダメージ付加
## 水中突入時ダメージ付加: 水中に潜ると足をつけているだけでもダメージ。ただし、ID:2（SUBNAUTICA）は例外として、ダメージを受けない
execute as @a[scores={ship-num=1..}] at @s unless score #Helper stage-sel-result matches 2 if block ~ ~ ~ water run effect give @s instant_damage 4 0 false
execute as @e[type=#ship-based-pvp-datapacks:undead] at @s if block ~ ~ ~ water run kill @s

## 溶岩突入時ダメージ付加: 溶岩ダイブすると足をつけているだけでも大ダメージ。
execute as @a[scores={ship-num=1..}] at @s if block ~ ~ ~ lava run effect give @s instant_damage 4 1 false
#endregion

#奈落時必ず即死
#奈落へ落ちたときに必ず死ぬ。
execute as @a[scores={ship-num=1..}] at @s if block ~ ~-1 ~ void_air run kill @s
