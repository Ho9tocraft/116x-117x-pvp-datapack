#リスポーンクールタイムの処理です。
#1. リスポーンセット
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=-1},gamemode=adventure] at @s run scoreboard players set @s respawn-time 10
# 1-b. 犠牲者が出た時にアイテム配給
# 1-b-i. 青配給
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=10},gamemode=adventure] at @s if entity @s[team=Red] run give @a[team=Blue] iron_ingot{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=10},gamemode=adventure] at @s if entity @s[team=Red] run give @a[team=Blue] gold_ingot{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=10},gamemode=adventure] at @s if entity @s[team=Red] run give @a[team=Blue] diamond{display:{Name:'{"text":"Diamond Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 1
# 1-b-ii. 赤配給
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=10},gamemode=adventure] at @s if entity @s[team=Blue] run give @a[team=Red] iron_ingot{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=10},gamemode=adventure] at @s if entity @s[team=Blue] run give @a[team=Red] gold_ingot{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=10},gamemode=adventure] at @s if entity @s[team=Blue] run give @a[team=Red] diamond{display:{Name:'{"text":"Diamond Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 1
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=10},gamemode=adventure] at @s run gamemode spectator @s

#スコア計測
#デスカ計測 赤チーム
execute as @a[team=Blue,scores={killcount-Temp=1..,respawn-time=10}] at @s run scoreboard players add #Helper point-red 1
#デスカ計測 青チーム
execute as @a[team=Red,scores={killcount-Temp=1..,respawn-time=10}] at @s run scoreboard players add #Helper point-blue 1
execute as @a[team=Blue,scores={killcount-Temp=1..,respawn-time=10}] at @s run scoreboard players add #Helper killC-bothCorner 1
execute as @a[team=Red,scores={killcount-Temp=1..,respawn-time=10}] at @s run scoreboard players add #Helper killC-bothCorner 1

#2. リスポーンクールタイム・カウントダウン
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator] at @s run scoreboard players remove @s respawn-time 1
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator,team=Red] at @s run spectate @s @p[sort=nearest,team=Blue]
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator,team=Blue] at @s run spectate @s @p[sort=nearest,team=Red]
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator] at @s run title @s times 0 100 0
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator] at @s run title @s subtitle ["",{"text":"Respawn Remains: "},{"score":{"name":"@s","objective":"respawn-time"},"color":"green"}]
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator] at @s run title @s title {"text":" \u0020YOU DIED \u0020 ","bold":true,"underlined":true,"color":"red"}

#3. リスポーンクールタイム・エンド
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run spectate @s
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run function ship-based-pvp-datapacks:trigger-process/resp-focuspoint
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run function ship-based-pvp-datapacks:trigger-process/respawn-trigger
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run effect give @s minecraft:health_boost 1000000 4 true
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run effect give @s minecraft:instant_health 20 9 true
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run effect give @s resistance 10 5 true
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run give @s cooked_beef 4
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players add @s[scores={awake_gauge=..1200}] awake_gauge 400
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run title @s times 0 100 40
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run title @s title {"text":" \u0020Respawned \u0020 ","bold":true,"underlined":true}
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s skill1-ct 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s skill2-ct 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s skill3-ct 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s skill4-ct 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s killcount-Temp 0
execute as @a[scores={ship-num=1..,killcount-Temp=0,respawn-time=0},gamemode=spectator] at @s run gamemode adventure @s
execute if score #Helper timer_battle matches 1..60 as @a[scores={ship-num=1..,killcount-Temp=0,respawn-time=0},gamemode=adventure] at @s run effect give @s glowing 60 9 true
execute as @a[scores={ship-num=1..,killcount-Temp=0,respawn-time=0},gamemode=adventure] at @s run scoreboard players remove @s respawn-time 1



