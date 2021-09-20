#新規参加者用に使用するリストア・イニシャライザです。tick.jsonで制御します。
scoreboard players set @a[tag=!InitComplete] FocusPoint 0
scoreboard players set @a[tag=!InitComplete] killcount-Temp 0
scoreboard players set @a[tag=!InitComplete] respawn-time -1
scoreboard players set @a[tag=!InitComplete] ship-num 0
scoreboard players set @a[tag=!InitComplete] skill1-ct 0
scoreboard players set @a[tag=!InitComplete] skill2-ct 0
scoreboard players set @a[tag=!InitComplete] skill3-ct 0
scoreboard players set @a[tag=!InitComplete] skill4-ct 0
execute as @a[tag=!InitComplete] at @s run function ho9tocraft:item-sample/ship-select
tag @a[tag=!InitComplete] add InitComplete
