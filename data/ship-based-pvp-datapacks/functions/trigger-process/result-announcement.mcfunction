#結果発表用の関数。
#遅延実行させたかったので搭載。

#引き分け
execute if score #Helper point-red = #Helper point-blue run title @a times 20 160 20
execute if score #Helper point-red = #Helper point-blue run title @a subtitle ["",{"score":{"name":"#Helper","objective":"point-red"},"color":"red"},{"text":" - "},{"score":{"name":"#Helper","objective":"point-blue"},"color":"blue"}]
execute if score #Helper point-red = #Helper point-blue run title @a title {"text":"Draw...","bold":true,"color":"green"}

#Red勝利
execute if score #Helper point-red > #Helper point-blue run title @a times 20 160 20
execute if score #Helper point-red > #Helper point-blue run title @a subtitle ["",{"score":{"name":"#Helper","objective":"point-red"},"color":"red"},{"text":" - "},{"score":{"name":"#Helper","objective":"point-blue"},"color":"blue"}]
execute if score #Helper point-red > #Helper point-blue run title @a title {"text":"Red","bold":true,"color":"red"}

#Blue勝利
execute if score #Helper point-red < #Helper point-blue run title @a times 20 160 20
execute if score #Helper point-red < #Helper point-blue run title @a subtitle ["",{"score":{"name":"#Helper","objective":"point-red"},"color":"red"},{"text":" - "},{"score":{"name":"#Helper","objective":"point-blue"},"color":"blue"}]
execute if score #Helper point-red < #Helper point-blue run title @a title {"text":"Blue","bold":true,"color":"blue"}

#所持アイテムリセット
clear @a[team=!]
execute as @a[team=!] at @s run function ho9tocraft:item-sample/ship-select
scoreboard players set @a ship-num 0
scoreboard players set @a skill1-ct 0
scoreboard players set @a skill2-ct 0
scoreboard players set @a skill3-ct 0
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
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar ship-num
effect clear @a hunger
effect clear @a wither
effect give @a saturation 1 9 false
effect give @a instant_health 1 9 false
gamemode adventure @a