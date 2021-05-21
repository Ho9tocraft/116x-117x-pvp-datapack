#職業別パーティクル
#あくまでおまけである為特に意味はない。
#もしかしたらキャラ発見の役に立つかも？
#騎士、傭兵、戦士、伝令、魔術師: 灯火（残り火）
#火継ぎの魂振: 魂の灯火（蒼炎）
#やつしの狩人: 血（bloodborne）
#持たざる者: 灰（燃え尽きぬ不死人）
#略奪者: 血（bloodborne）
#暗月の剣: 蒼（誓約「暗月の剣」の誓約色）
#姫騎士: 桜の花散る（元ネタなし）

execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=1..5}] at @s run particle flame ~ ~1 ~ 0.4 0.9 0.4 0 2 normal @a[distance=..7.5]
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=6}] at @s run particle soul_fire_flame ~ ~1 ~ 0.4 0.9 0.4 0 2 normal @a[distance=..7.5]
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=7}] at @s run particle dust 1.000 0.000 0.000 1 ~ ~1 ~ 0.4 0.9 0.4 1 2 normal @a[distance=..7.5]
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=8}] at @s run particle smoke ~ ~1 ~ 0.4 0.9 0.4 0 2 normal @a[distance=..7.5]
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=9}] at @s run particle dust 1.000 0.000 0.000 1 ~ ~1 ~ 0.4 0.9 0.4 1 2 normal @a[distance=..7.5]
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=10}] at @s run particle dust 0.000 0.482 0.733 1 ~ ~1 ~ 0.4 0.9 0.4 1 2 normal @a[distance=..7.5]
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=11}] at @s run particle dust 0.996 0.957 0.957 1 ~ ~1 ~ 0.4 0.9 0.4 1 2 normal @a[distance=..7.5]

