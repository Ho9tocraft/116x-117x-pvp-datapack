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
#エスト瓶を1個減らす
execute as @a[scores={ship-num=1..5,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run clear @s orange_dye{citTexture:Estus} 1
#CTを20にする
execute as @a[scores={ship-num=1..5,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run scoreboard players set @s skill1-ct 20
#なくなり次第CTを600固定にする(戦闘中のみ)
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=1..5},nbt=!{Inventory:[{id:"minecraft:orange_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill1-ct 600

#エスト瓶 ship-num:7～向け
#即時回復Ⅳを発動
execute as @a[scores={ship-num=7..,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run effect give @s instant_health 1 3 true
#エスト回復エフェクト
execute as @a[scores={ship-num=7..,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run particle dust 0.953 0.596 0.000 1 ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
#エスト瓶を1個減らす
execute as @a[scores={ship-num=7..,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run clear @s orange_dye{citTexture:Estus} 1
#CTを20にする
execute as @a[scores={ship-num=7..,skill1-ct=0},predicate=ship-based-pvp-datapacks:estus-frask] at @s run scoreboard players set @s skill1-ct 20
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
#エストの灰瓶を1個減らす
execute as @a[scores={ship-num=1..3,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run clear @s light_blue_dye{citTexture:Estus} 1
execute as @a[scores={ship-num=4..5,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run clear @s light_blue_dye{citTexture:Estus} 1
#CTを30(魔法使い系20)にする
execute as @a[scores={ship-num=1..3,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s skill2-ct 30
execute as @a[scores={ship-num=4..5,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s skill2-ct 20
#なくなり次第CTを600に固定する
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=1..5},nbt=!{Inventory:[{id:"minecraft:light_blue_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill2-ct 600

#エストの灰瓶 ship-num:6向け(特殊)
#FPを240回復する。ただし、上限を突破する場合、それで統合する
execute as @a[scores={ship-num=6,skill1-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players add @s FocusPoint 240
execute as @a[scores={ship-num=6,skill1-ct=0,FocusPoint=251..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 250
#灰エスト回復エフェクト
execute as @a[scores={ship-num=6,skill1-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run particle dust 0.698 0.796 0.894 1 ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
#エストの灰瓶を1個減らす
execute as @a[scores={ship-num=6,skill1-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run clear @s light_blue_dye{citTexture:Estus} 1
#CTを40にする
execute as @a[scores={ship-num=6,skill1-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s skill1-ct 40
#なくなり次第CTを600に固定する
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=6},nbt=!{Inventory:[{id:"minecraft:light_blue_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill1-ct 600

#エストの灰瓶 ship-num:8～向け
#FPを240回復する。ただし、上限を突破する場合、それで統合する
execute as @a[scores={ship-num=8..,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players add @s FocusPoint 240
execute as @a[scores={ship-num=8,skill2-ct=0,FocusPoint=101..},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s FocusPoint 100
#灰エスト回復エフェクト
execute as @a[scores={ship-num=8..,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run particle dust 0.698 0.796 0.894 1 ~ ~ ~ 0.5 0.5 0.5 1 20 normal @a
#エストの灰瓶を1個減らす
execute as @a[scores={ship-num=8..,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run clear @s light_blue_dye{citTexture:Estus} 1
#CTを30(魔法使い系20)にする
execute as @a[scores={ship-num=8..,skill2-ct=0},predicate=ship-based-pvp-datapacks:ashen-estus-frask] at @s run scoreboard players set @s skill2-ct 30
#なくなり次第CTを600に固定する
execute if score #Helper CombatMode matches 2.. as @a[scores={ship-num=8..},nbt=!{Inventory:[{id:"minecraft:light_blue_dye",tag:{citTexture:Estus}}]}] at @s run scoreboard players set @s skill2-ct 600
