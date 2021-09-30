#とりあえず起動用コードを構築
execute if score #Helper CombatMode matches 0 run function ship-based-pvp-datapacks:calc/battle-init
#準備時間、カウントダウン開始
execute if score #Helper CombatMode matches 0 run scoreboard players set #Helper CombatMode 1
execute if score #Helper timer_prebattle matches 1.. run scoreboard players remove #Helper timer_prebattle 1
execute store result bossbar minecraft:prepare_time value run scoreboard players get #Helper timer_prebattle
#試合残り時間、カウントダウン開始
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run title @a times 10 100 40
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run title @a title {"text":"BEGIN MATCH","bold":true,"underlined":true,"color":"gold"}
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run playsound entity.wither.spawn master @a ~ ~ ~ 100 1.0 0.5
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run bossbar remove minecraft:prepare_time
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run bossbar set minecraft:battle_time players @a
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run effect clear @a saturation
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run effect clear @a resistance
execute if score #Helper CombatMode matches 1 if score #Helper timer_prebattle matches 0 run scoreboard players set #Helper CombatMode 2
execute if score #Helper CombatMode matches 2 if score #Helper timer_battle matches 0.. run scoreboard players remove #Helper timer_battle 1
execute store result bossbar minecraft:battle_time value run scoreboard players get #Helper timer_battle
execute if score #Helper stage-sel-result matches -1024 store result bossbar minecraft:boss_yuzuki_handheld value run data get entity @e[type=skeleton,tag=Yuzuki_HandHeld,limit=1] Health


#リスポーン処理
execute if score #Helper CombatMode matches 2 run function ship-based-pvp-datapacks:trigger-process/respawn-process

#ボスキャラ消失時処理
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches -1024 if score #Helper timer_battle matches 2.. unless entity @e[type=skeleton,tag=Yuzuki_HandHeld] run scoreboard players set #Helper point-blue 32768
execute if score #Helper CombatMode matches 2 if score #Helper stage-sel-result matches -1024 if score #Helper timer_battle matches 2.. unless entity @e[type=skeleton,tag=Yuzuki_HandHeld] run scoreboard players set #Helper timer_battle 1

#コールド勝利判定（30点先取）
execute unless score #Helper stage-sel-result matches -1024 if score #Helper point-red matches 30.. if score #Helper timer_battle matches 2.. run scoreboard players set #Helper timer_battle 1
execute unless score #Helper stage-sel-result matches -1024 if score #Helper point-blue matches 30.. if score #Helper timer_battle matches 2.. run scoreboard players set #Helper timer_battle 1

#キルリセット: CombatMode 2以外で死傷者が出た場合に発動
execute unless score #Helper CombatMode matches 2 as @a[scores={killcount-Temp=1}] at @s run scoreboard players set @s killcount-Temp 0
#ファーストキル発生検知
execute if score #Helper CombatMode matches 2 if score #Helper killDetect matches 0 if score #Helper killC-bothCorner matches 1 run tellraw @a {"text":"\u30d5\u30a1\u30fc\u30b9\u30c8\u30ad\u30eb\u304c\u767a\u751f\u3057\u307e\u3057\u305f\uff01","color":"#EA5506"}
execute if score #Helper CombatMode matches 2 if score #Helper killDetect matches 0 if score #Helper killC-bothCorner matches 1 run scoreboard players set #Helper killDetect 1


#サプライチェスト
execute if score #Helper CombatMode matches 2 if score #Helper timer_supply matches 1.. run scoreboard players remove #Helper timer_supply 1
execute if score #Helper CombatMode matches 2 if score #Helper timer_battle matches 1.. if score #Helper timer_supply matches 0 run function ship-based-pvp-datapacks:trigger-process/supply-process
execute if score #Helper CombatMode matches 2 if score #Helper timer_battle matches 1.. if score #Helper timer_supply matches 0 run scoreboard players set #Helper timer_supply 180


#試合終了1分前
#タイトル
execute if score #Helper timer_battle matches 60 run title @a times 20 100 20
execute if score #Helper timer_battle matches 60 run title @a title {"text":"\u6b8b\u308a\u6642\u9593: 1\u5206"}
#スペクテーターは見てるだけなので音を鳴らさない
execute if score #Helper timer_battle matches 60 run playsound entity.wither.spawn master @a[gamemode=!spectator] ~ ~ ~ 100 1.0 0.5
#芋り対策の為発光エフェクト付与
execute if score #Helper timer_battle matches 60 run effect give @a[team=!] glowing 60 9 true
#金トークン32個を一律配布
execute if score #Helper timer_battle matches 60 as @a[team=!] at @s run give @s gold_ingot{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 32


#試合終了
#コンバットモード切り替え
execute if score #Helper timer_battle matches 0 run scoreboard players set #Helper CombatMode 3
#タイムアップ通知
execute if score #Helper timer_battle matches 0 run effect give @a resistance 1000000 4 true
execute if score #Helper timer_battle matches 0 run effect give @a regeneration 12 9 true
execute if score #Helper timer_battle matches 0 run effect give @a saturation 1000000 9 true
execute if score #Helper timer_battle matches 0 run kill @e[type=ravager]
execute if score #Helper timer_battle matches 0 run kill @e[type=#ship-based-pvp-datapacks:undead]
execute if score #Helper timer_battle matches 0 run title @a times 20 160 20
execute if score #Helper timer_battle matches 0 unless score #Helper stage-sel-result matches -1024 unless score #Helper point-red matches 30.. unless score #Helper point-blue matches 30.. run title @a title {"text":"Time Up! The Winner is..."}
execute if score #Helper timer_battle matches 0 unless score #Helper stage-sel-result matches -1024 unless score #Helper point-red matches 30.. unless score #Helper point-blue matches 30.. run title @a title {"text":"Time Up! The Winner is..."}
execute if score #Helper timer_battle matches 0 unless score #Helper stage-sel-result matches -1024 unless score #Helper point-red matches ..29 unless score #Helper point-blue matches ..29 run title @a title {"text":"You're BBQed!!!","color": "red","bold": true}
execute if score #Helper timer_battle matches 0 if score #Helper stage-sel-result matches -1024 if score #Helper point-blue matches 1.. run title @a title {"text":"LORD OF CINDER FALLEN","bold": true,"underlined": true,"color": "red"}
#リザルト表示
execute if score #Helper timer_battle matches 0 run schedule function ship-based-pvp-datapacks:trigger-process/result-announcement 12s append
execute if score #Helper timer_battle matches 0 run scoreboard players set #Helper timer_battle -1

