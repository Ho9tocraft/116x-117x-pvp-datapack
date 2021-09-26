#tokenジェネレーター

#1. Token Phase Shifter（残り時間によるトークンフェーズ変更）＆Token Timer
execute if score #Helper timer_battle = #Helper timer_battle-hf run scoreboard players set #Helper token-phase 1
execute if score #Helper timer_battle = #Helper timer_battle-qa run scoreboard players set #Helper token-phase 2

#2. Token Timer Count Up
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-iron matches ..14 run scoreboard players add #Helper token-sp-iron 1
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-gold matches ..19 run scoreboard players add #Helper token-sp-gold 1
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-diamond matches ..29 run scoreboard players add #Helper token-sp-diamond 1

execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-iron matches ..11 run scoreboard players add #Helper token-sp-iron 1
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-gold matches ..15 run scoreboard players add #Helper token-sp-gold 1
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-diamond matches ..19 run scoreboard players add #Helper token-sp-diamond 1

execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-iron matches ..11 run scoreboard players add #Helper token-sp-iron 1
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-gold matches ..14 run scoreboard players add #Helper token-sp-gold 1
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-diamond matches ..15 run scoreboard players add #Helper token-sp-diamond 1

#3. Token Spawn
execute if score #Helper stage-sel-result matches 0 run function ship-based-pvp-datapacks:trigger-process/generator/stage-0
execute if score #Helper stage-sel-result matches 1 run function ship-based-pvp-datapacks:trigger-process/generator/stage-1
execute if score #Helper stage-sel-result matches 2 run function ship-based-pvp-datapacks:trigger-process/generator/stage-2

#4. Token Timer Count Reset
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-iron matches 15.. run scoreboard players set #Helper token-sp-iron 0
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-gold matches 20.. run scoreboard players set #Helper token-sp-gold 0
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-diamond matches 30.. run scoreboard players set #Helper token-sp-diamond 0

execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-iron matches 12.. run scoreboard players set #Helper token-sp-iron 0
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-gold matches 16.. run scoreboard players set #Helper token-sp-gold 0
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-diamond matches 20.. run scoreboard players set #Helper token-sp-diamond 0

execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-iron matches 10.. run scoreboard players set #Helper token-sp-iron 0
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-gold matches 15.. run scoreboard players set #Helper token-sp-gold 0
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-diamond matches 16.. run scoreboard players set #Helper token-sp-diamond 0

