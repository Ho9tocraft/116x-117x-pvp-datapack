#エスト瓶・エストの灰瓶のCT制御: 20秒/本(エスト瓶)、30秒/本(エストの灰瓶)をCTとし、使い切った場合はCTに600を代入し続ける。
#以下、職業ごとのCT配置箇所
#特筆するものでないかぎり(1,2,3,4,5,8): エスト瓶=1、エストの灰瓶=2
#火継ぎの魂振: エスト瓶=N/A、エストの灰瓶=1
#やつしの狩人: エスト瓶=1、エストの灰瓶=N/A

#エスト瓶 ship-num:1～5向け
#即時回復Ⅳを発動
execute as @a[scores={ship-num=1..5,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run effect give @s instant_health 1 3 true
#エスト回復エフェクト
execute as @a[scores={ship-num=1..5,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run particle dust 0.953 0.596 0.000 1 ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
#CTを20にする
execute as @a[scores={ship-num=1..5,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run scoreboard players set @s skill1-ct 20
#エスト瓶を1個減らす
execute as @a[scores={ship-num=1..5,skill1-ct=20},predicate=ship-based-pvp-datapacks:estus-frask] at @s run clear @s orange_dye{citTexture:Estus} 1
#なくなり次第CTを600固定にする(戦闘中のみ)
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=1..5},nbt=!{Inventory:[{id:"minecraft:orange_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill1-ct 600

#エスト瓶 ship-num:7～向け
#即時回復Ⅳを発動
execute as @a[scores={ship-num=7..,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run effect give @s instant_health 1 3 true
#エスト回復エフェクト
execute as @a[scores={ship-num=7..,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run particle dust 0.953 0.596 0.000 1 ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
#CTを20にする
execute as @a[scores={ship-num=7..,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run scoreboard players set @s skill1-ct 20
#エスト瓶を1個減らす
execute as @a[scores={ship-num=7..,skill1-ct=20},predicate=ship-based-pvp-datapacks:estus-frask] at @s run clear @s orange_dye{citTexture:Estus} 1
#なくなり次第CTを600固定にする
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=7..},nbt=!{Inventory:[{id:"minecraft:orange_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill1-ct 600

#エストの灰瓶 ship-num:1～5向け
#FPを240回復する。ただし、上限を突破する場合、それで統合する
execute as @a[scores={ship-num=1..5,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players add @s FocusPoint 240
execute as @a[scores={ship-num=1,skill2-ct=0,FocusPoint=151..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 150
execute as @a[scores={ship-num=2,skill2-ct=0,FocusPoint=151..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 150
execute as @a[scores={ship-num=3,skill2-ct=0,FocusPoint=101..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 100
execute as @a[scores={ship-num=4,skill2-ct=0,FocusPoint=201..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 200
execute as @a[scores={ship-num=5,skill2-ct=0,FocusPoint=301..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 300
#灰エスト回復エフェクト
execute as @a[scores={ship-num=1..5,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run particle dust 0.698 0.796 0.894 1 ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
#CTを30(魔法使い系20)にする
execute as @a[scores={ship-num=1..3,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s skill2-ct 30
execute as @a[scores={ship-num=4..5,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s skill2-ct 20
#エストの灰瓶を1個減らす
execute as @a[scores={ship-num=1..3,skill2-ct=30},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run clear @s light_blue_dye{citTexture:Estus} 1
execute as @a[scores={ship-num=4..5,skill2-ct=20},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run clear @s light_blue_dye{citTexture:Estus} 1
#なくなり次第CTを600に固定する
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=1..5},nbt=!{Inventory:[{id:"minecraft:light_blue_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill2-ct 600

#エストの灰瓶 ship-num:6向け(特殊)
#FPを240回復する。ただし、上限を突破する場合、それで統合する
execute as @a[scores={ship-num=6,skill1-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players add @s FocusPoint 240
execute as @a[scores={ship-num=6,skill1-ct=0,FocusPoint=251..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 250
#灰エスト回復エフェクト
execute as @a[scores={ship-num=6,skill1-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run particle dust 0.698 0.796 0.894 1 ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
#CTを40にする
execute as @a[scores={ship-num=6,skill1-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s skill1-ct 40
#エストの灰瓶を1個減らす
execute as @a[scores={ship-num=6,skill1-ct=40},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run clear @s light_blue_dye{citTexture:Estus} 1
#なくなり次第CTを600に固定する
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=6},nbt=!{Inventory:[{id:"minecraft:light_blue_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill1-ct 600

#エストの灰瓶 ship-num:8～向け
#FPを240回復する。ただし、上限を突破する場合、それで統合する
execute as @a[scores={ship-num=8..,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players add @s FocusPoint 240
execute as @a[scores={ship-num=8,skill2-ct=0,FocusPoint=101..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 100
#灰エスト回復エフェクト
execute as @a[scores={ship-num=8..,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run particle dust 0.698 0.796 0.894 1 ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
#CTを30(魔法使い系20)にする
execute as @a[scores={ship-num=8..,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s skill2-ct 30
#エストの灰瓶を1個減らす
execute as @a[scores={ship-num=8..,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run clear @s light_blue_dye{citTexture:Estus} 1
#なくなり次第CTを600に固定する
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=8..},nbt=!{Inventory:[{id:"minecraft:light_blue_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill2-ct 600


#FPの自動回復: FPは勝手に回復する。しかし、回復する確率は25%/sec(やつしの狩人のみ50%/sec)。必ずしも回復するとは限らない。
execute as @a[scores={ship-num=1..2,FocusPoint=..149},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=3,FocusPoint=..99},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=4,FocusPoint=..199},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=5,FocusPoint=..299},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=6,FocusPoint=..249},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=7,FocusPoint=..249},predicate=ship-based-pvp-datapacks:focus-point-autoregen-hunter] at @s run scoreboard players add @s FocusPoint 1
execute as @a[scores={ship-num=8,FocusPoint=..99},predicate=ship-based-pvp-datapacks:focus-point-autoregen] at @s run scoreboard players add @s FocusPoint 1


#与ダメ観測: ship-num=6のみ、攻撃する度にFPが減る。FP5未満で完全に攻撃不能になる。また、FP100未満で攻撃力4低下
execute as @a[scores={ship-num=6,FocusPoint=5..,attack-det=1..}] at @s run scoreboard players remove @s FocusPoint 5
execute as @a[scores={ship-num=6,FocusPoint=5..99}] at @s run effect give @s weakness 1 0 true
execute as @a[scores={ship-num=6,FocusPoint=..4}] at @s run effect give @s weakness 1 255 true
execute as @a[scores={ship-num=6,FocusPoint=..4}] at @s run effect give @s mining_fatigue 1 255 true
execute as @a[scores={attack-det=1..}] at @s run scoreboard players set @s attack-det 0

