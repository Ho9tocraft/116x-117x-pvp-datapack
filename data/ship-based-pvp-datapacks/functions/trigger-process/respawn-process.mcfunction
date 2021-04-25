#リスポーンクールタイムの処理です。
#1. リスポーンセット
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=-1},gamemode=adventure] at @s run scoreboard players set @s respawn-time 10
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
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator] at @s at @a[predicate=ship-based-pvp-datapacks:killstreaks] run tp ~ ~ ~
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator] at @s run title @s times 0 100 0
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator] at @s run title @s subtitle ["",{"text":"Respawn Remains: "},{"score":{"name":"@s","objective":"respawn-time"},"color":"green"}]
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=1..},gamemode=spectator] at @s run title @s title {"text":" \u0020YOU DIED \u0020 ","bold":true,"underlined":true,"color":"red"}

#3. リスポーンクールタイム・エンド
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run function ship-based-pvp-datapacks:trigger-process/resp-focuspoint
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run function ship-based-pvp-datapacks:trigger-process/respawn-trigger
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run effect give @s minecraft:health_boost 1000000 4 true
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run effect give @s minecraft:instant_health 20 9 true
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run title @s times 0 100 40
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run title @s title {"text":" \u0020Respawned \u0020 ","bold":true,"underlined":true}
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s skill1-ct 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s skill2-ct 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s skill3-ct 5
execute as @a[scores={ship-num=1..,killcount-Temp=1..,respawn-time=0},gamemode=spectator] at @s run scoreboard players set @s killcount-Temp 0
execute as @a[scores={ship-num=1..,killcount-Temp=0,respawn-time=0},gamemode=spectator] at @s run gamemode adventure @s
execute if score #Helper timer_battle matches 1..60 as @a[scores={ship-num=1..,killcount-Temp=0,respawn-time=0},gamemode=adventure] at @s run effect give @s glowing 60 9 true
execute as @a[scores={ship-num=1..,killcount-Temp=0,respawn-time=0},gamemode=adventure] at @s run scoreboard players remove @s respawn-time 1



