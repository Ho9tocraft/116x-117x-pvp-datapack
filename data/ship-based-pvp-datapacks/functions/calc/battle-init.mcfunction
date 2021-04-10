function #ship-based-pvp-datapacks:call-ship-initializer
gamemode adventure @a[scores={ship-num=1..}]
bossbar add prepare_time {"text": "準備時間"}
bossbar set minecraft:prepare_time color blue
bossbar set minecraft:prepare_time max 30
bossbar set minecraft:prepare_time style notched_6
bossbar add battle_time {"text": "残り時間"}
bossbar set minecraft:battle_time color red
bossbar set minecraft:battle_time max 600
bossbar set minecraft:battle_time style notched_12
bossbar set minecraft:prepare_time players @a
scoreboard players set #Helper timer_prebattle 30
scoreboard players set #Helper timer_battle 600
scoreboard players set #Helper timer_supply 180
#試合開始/終了時に表示するものを変更する。
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.red health-red
scoreboard objectives setdisplay sidebar.team.blue health-blue

effect give @a regeneration 30 9 true
effect give @a[gamemode=!spectator] health_boost 1000000 4 true
effect give @a saturation 600 9 true
give @a[gamemode=!spectator] cooked_beef 64
clear @a[scores={ship-num=2}] cooked_beef 48
