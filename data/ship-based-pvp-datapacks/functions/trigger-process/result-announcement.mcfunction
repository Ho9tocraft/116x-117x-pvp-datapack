#結果発表用の関数。
#遅延実行させたかったので搭載。

#引き分け
execute if score #Helper point-red = #Helper point-blue run title @a times 20 160 20
execute if score #Helper point-red = #Helper point-blue run title @a subtitle ["",{"score":{"name":"#Helper","objective":"point-red"},"color":"red"},{"text":" - "},{"score":{"name":"#Helper","objective":"point-blue"},"color":"blue"}]
execute if score #Helper point-red = #Helper point-blue run title @a title {"text":"Draw...","bold":true,"color":"green"}

#Red勝利
execute unless score #Helper stage-sel-result matches -1024 if score #Helper point-red > #Helper point-blue as @a[team=Red] at @s run function ship-based-pvp-datapacks:advancements/advancement_approved
execute if score #Helper point-red > #Helper point-blue run title @a times 20 160 20
execute if score #Helper point-red > #Helper point-blue run title @a subtitle ["",{"score":{"name":"#Helper","objective":"point-red"},"color":"red"},{"text":" - "},{"score":{"name":"#Helper","objective":"point-blue"},"color":"blue"}]
execute if score #Helper point-red > #Helper point-blue run title @a title {"text":"Red","bold":true,"color":"red"}

#Blue勝利
execute unless score #Helper stage-sel-result matches -1024 if score #Helper point-red < #Helper point-blue as @a[team=Blue] at @s run function ship-based-pvp-datapacks:advancements/advancement_approved
execute if score #Helper point-red < #Helper point-blue run title @a times 20 160 20
execute if score #Helper point-red < #Helper point-blue run title @a subtitle ["",{"score":{"name":"#Helper","objective":"point-red"},"color":"red"},{"text":" - "},{"score":{"name":"#Helper","objective":"point-blue"},"color":"blue"}]
execute if score #Helper point-red < #Helper point-blue run title @a title {"text":"Blue","bold":true,"color":"blue"}

#所持アイテムリセット
clear @a[team=!]
scoreboard players set @a awake_gauge 0
tag @a[tag=awake] remove awake
tag @a[tag=awake_lostfp] remove awake_lostfp
scoreboard players set * ship-num 0
scoreboard players set @a skill1-ct 0
scoreboard players set @a skill2-ct 0
scoreboard players set @a skill3-ct 0
scoreboard players set @a skill4-ct 0
scoreboard players set @a shield-guard 0
scoreboard players set #Helper timer_battle -1
scoreboard players set #Helper timer_prebattle -1
scoreboard players set #Helper timer_supply -1
scoreboard players set #Helper point-blue 0
scoreboard players set #Helper point-red 0
scoreboard players set #Helper killC-bothCorner 0
scoreboard players set #Helper CombatMode -1
scoreboard players set #Helper killDetect 0
bossbar remove minecraft:battle_time
bossbar remove minecraft:boss_yuzuki_handheld
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar ship-num
effect clear @a hunger
effect clear @a wither
effect clear @a blindness
effect clear @a glowing
effect clear @a luck
effect clear @a slowness
effect clear @a health_boost
effect give @a health_boost 1000000 4 true
scoreboard players reset * health-spectate
effect give @a instant_health 1 9 false
gamemode adventure @a
spawnpoint @a -186 12 -56
tp @a -186 12 -56
team leave *
scoreboard players reset * health-red
scoreboard players reset * health-blue
