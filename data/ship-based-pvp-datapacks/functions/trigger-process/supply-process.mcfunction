#ルートテーブル

execute if score #Helper stage-sel-result matches 0 run function ship-based-pvp-datapacks:trigger-process/supply/stage-0
execute if score #Helper stage-sel-result matches 1 run function ship-based-pvp-datapacks:trigger-process/supply/stage-1

#サプライが来たぞ！
#Supplies has arrived
tellraw @a[scores={ship-num=1..}] ["",{"text":"NOTICE:","bold":true,"color":"red"},{"text":" Supplies has Arrived!"}]
#Supplies has arrived for Spectator modes
tellraw @a[scores={ship-num=0}] ["",{"text":"NOTICE:","bold":true,"color":"red"},{"text":" Oops, it looks like supplies have arrived. But you are the audience. You just have to be quiet."}]

