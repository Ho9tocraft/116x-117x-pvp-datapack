execute as @a at @s run function #ship-based-pvp-datapacks:call-ship-initializer
scoreboard players set @a awake_gauge 0
gamemode spectator @a[scores={ship-num=..0}]
kill @e[type=item]
gamemode adventure @a[scores={ship-num=1..}]
function ship-based-pvp-datapacks:trigger-process/respawn-trigger
team leave @a[scores={ship-num=..0}]
bossbar add prepare_time {"text": "準備時間"}
bossbar set minecraft:prepare_time color blue
bossbar set minecraft:prepare_time max 30
bossbar set minecraft:prepare_time style notched_6
bossbar add battle_time {"text": "残り時間"}
bossbar set minecraft:battle_time color red
execute store result bossbar minecraft:battle_time max run scoreboard players get #Helper timer_battle-max
bossbar set minecraft:battle_time style notched_12
bossbar set minecraft:prepare_time players @a
scoreboard players set #Helper timer_prebattle 30
function ship-based-pvp-datapacks:calc/timer-half-quart-calc
scoreboard players operation #Helper timer_battle = #Helper timer_battle-max
scoreboard players set #Helper timer_supply 180
#試合開始/終了時に表示するものを変更する。
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.red health-red
scoreboard objectives setdisplay sidebar.team.blue health-blue

scoreboard players set @a shield-guard 0
scoreboard players set @a shield-guard-sum 0
scoreboard players set @a killcount-Temp 0
scoreboard players set @a respawn-time -1
scoreboard players set #Helper token-phase 0
scoreboard players set #Helper token-sp-iron 0
scoreboard players set #Helper token-sp-gold 0
scoreboard players set #Helper token-sp-diamond 0
effect give @a regeneration 30 9 true
effect give @a[gamemode=!spectator] health_boost 1000000 4 true
effect give @a saturation 600 9 true
give @a[gamemode=!spectator] cooked_beef 64
clear @a[scores={ship-num=2}] cooked_beef 48
clear @a[scores={ship-num=8}] cooked_beef 48
kill @e[type=item]
