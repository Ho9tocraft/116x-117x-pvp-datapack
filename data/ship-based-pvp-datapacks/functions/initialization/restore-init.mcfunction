#新規参加者用に使用するリストア・イニシャライザです。tick.jsonで制御します。
#Basic
scoreboard players set @a[tag=!InitComplete] FocusPoint 0
scoreboard players set @a[tag=!InitComplete] killcount-Temp 0
scoreboard players set @a[tag=!InitComplete] respawn-time -1
scoreboard players set @a[tag=!InitComplete] ship-num 0
#Skill-Cooltime
scoreboard players set @a[tag=!InitComplete] skill1-ct 0
scoreboard players set @a[tag=!InitComplete] skill2-ct 0
scoreboard players set @a[tag=!InitComplete] skill3-ct 0
scoreboard players set @a[tag=!InitComplete] skill4-ct 0
#職業別勝利回数
scoreboard players set @a[tag=!InitComplete] ship-any-win 0
scoreboard players set @a[tag=!InitComplete] ship-01-win 0
scoreboard players set @a[tag=!InitComplete] ship-02-win 0
scoreboard players set @a[tag=!InitComplete] ship-03-win 0
scoreboard players set @a[tag=!InitComplete] ship-04-win 0
scoreboard players set @a[tag=!InitComplete] ship-05-win 0
scoreboard players set @a[tag=!InitComplete] ship-06-win 0
scoreboard players set @a[tag=!InitComplete] ship-07-win 0
scoreboard players set @a[tag=!InitComplete] ship-08-win 0
scoreboard players set @a[tag=!InitComplete] ship-09-win 0
scoreboard players set @a[tag=!InitComplete] ship-10-win 0
scoreboard players set @a[tag=!InitComplete] ship-11-win 0
scoreboard players set @a[tag=!InitComplete] ship-12-win 0
scoreboard players set @a[tag=!InitComplete] ship-13-win 0
scoreboard players set @a[tag=!InitComplete] ship-14-win 0
scoreboard players set @a[tag=!InitComplete] ship-15-win 0
scoreboard players set @a[tag=!InitComplete] ship-16-win 0
scoreboard players set @a[tag=!InitComplete] ship-17-win 0
scoreboard players set @a[tag=!InitComplete] ship-18-win 0
scoreboard players set @a[tag=!InitComplete] ship-19-win 0
scoreboard players set @a[tag=!InitComplete] ship-20-win 0
scoreboard players set @a[tag=!InitComplete] ship-21-win 0
scoreboard players set @a[tag=!InitComplete] ship-22-win 0
scoreboard players set @a[tag=!InitComplete] ship-23-win 0
scoreboard players set @a[tag=!InitComplete] ship-24-win 0
scoreboard players set @a[tag=!InitComplete] ship-25-win 0
scoreboard players set @a[tag=!InitComplete] ship-26-win 0
scoreboard players set @a[tag=!InitComplete] ship-27-win 0
scoreboard players set @a[tag=!InitComplete] ship-28-win 0
scoreboard players set @a[tag=!InitComplete] ship-29-win 0
scoreboard players set @a[tag=!InitComplete] ship-30-win 0
#実績強制解除
execute as @a[tag=!InitComplete] at @s run advancement grant @s from minecraft:adventure/root
execute as @a[tag=!InitComplete] at @s run advancement grant @s from minecraft:story/root
execute as @a[tag=!InitComplete] at @s run advancement grant @s from minecraft:end/root
execute as @a[tag=!InitComplete] at @s run advancement grant @s from minecraft:husbandry/root
execute as @a[tag=!InitComplete] at @s run advancement grant @s from minecraft:nether/root
execute as @a[tag=!InitComplete] at @s run advancement grant @s from minecraft:recipes/root
execute as @a[tag=!InitComplete] at @s run effect give @s resistance 1000000 255 true
tag @a[tag=!InitComplete] add InitComplete
