#とりあえず起動用コードを構築
execute if score #Helper CombatMode matches 0 run function ship-based-pvp-datapacks:calc/battle-init
#準備時間、カウントダウン開始
execute if score #Helper CombatMode matches 0 run scoreboard players set #Helper CombatMode 1
execute if score #Helper timer_prebattle matches 1.. run scoreboard players remove #Helper timer_prebattle 1
execute store result bossbar minecraft:prepare_time value run scoreboard players get #Helper timer_prebattle
#試合残り時間、カウントダウン開始
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run bossbar remove minecraft:prepare_time
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run bossbar set minecraft:battle_time players @a
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run scoreboard players set #Helper CombatMode 2
execute if score #Helper CombatMode matches 2 if score #Helper timer_battle matches 0.. run scoreboard players remove #Helper timer_battle 1
execute store result bossbar minecraft:battle_time value run scoreboard players get #Helper timer_battle


#リスポーン処理
execute if score #Helper CombatMode matches 2 run function ship-based-pvp-datapacks:trigger-process/respawn-process

#キルリセット: CombatMode 2以外で死傷者が出た場合に発動
execute unless score #Helper CombatMode matches 2 as @a[scores={killcount-Temp=1}] at @s run scoreboard players set @s killcount-Temp 0
#ファーストキル発生検知
execute if score #Helper CombatMode matches 2 if score #Helper killDetect matches 0 if score #Helper killC-bothCorner matches 1 run tellraw @a {"text":"\u30d5\u30a1\u30fc\u30b9\u30c8\u30ad\u30eb\u304c\u767a\u751f\u3057\u307e\u3057\u305f\uff01","color":"#EA5506"}
execute if score #Helper CombatMode matches 2 if score #Helper killDetect matches 0 if score #Helper killC-bothCorner matches 1 run scoreboard players set #Helper killDetect 1


#サプライチェスト(未実装)
execute if score #Helper CombatMode matches 2 if score #Helper timer_supply matches 1.. run scoreboard players remove #Helper timer_supply 1
#execute if score #Helper CombatMode matches 2 if score #Helper timer_battle matches 1.. if score #Helper timer_supply matches 0 run function ship-based-pvp-datapacks:trigger-process/supply-process
execute if score #Helper CombatMode matches 2 if score #Helper timer_battle matches 1.. if score #Helper timer_supply matches 0 run scoreboard players set #Helper timer_supply 180


#試合終了1分前
#タイトル
execute if score #Helper timer_battle matches 60 run title @a times 20 100 20
execute if score #Helper timer_battle matches 60 run title @a title {"text":"\u6b8b\u308a\u6642\u9593: 1\u5206"}
#スペクテーターは見てるだけなので音を鳴らさない
execute if score #Helper timer_battle matches 60 run playsound entity.wither.spawn master @a[gamemode=!spectator] ~ ~ ~ 100 1.0 0.5
#芋り対策の為発光エフェクト付与
execute if score #Helper timer_battle matches 60 run effect give @a[team=!] glowing 60 9 true


#試合終了
#コンバットモード切り替え
execute if score #Helper timer_battle matches 0 run scoreboard players set #Helper CombatMode 3
#タイムアップ通知
execute if score #Helper timer_battle matches 0 run effect give @a resistance 12 4 true
execute if score #Helper timer_battle matches 0 run effect give @a regeneration 12 9 true
execute if score #Helper timer_battle matches 0 run effect give @a saturation 240 9 true
execute if score #Helper timer_battle matches 0 run title @a times 20 160 20
execute if score #Helper timer_battle matches 0 run title @a title {"text":"Time Up! The Winner is..."}
#リザルト表示
execute if score #Helper timer_battle matches 0 run schedule function ship-based-pvp-datapacks:trigger-process/result-announcement 12s append
execute if score #Helper timer_battle matches 0 run scoreboard players set #Helper timer_battle -1

