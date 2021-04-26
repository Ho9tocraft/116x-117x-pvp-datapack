#tick処理です
#tick-second converter(Count Up)
execute if score #Helper tick-sec_conv < #Helper tick-max run scoreboard players add #Helper tick-sec_conv 1
#tickloop-scores
execute if score #Helper stage-sel-rand matches ..19 run scoreboard players add #Helper stage-sel-rand 1
execute if score #Helper stage-sel-rand matches 20 run scoreboard players set #Helper stage-sel-rand 0
#battle mode: ct&fp display
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=1..}] at @s run title @s actionbar ["",{"text":"\u30b9\u30ad\u30eb1CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill1-ct"},"color":"red"},{"text":" \u30b9\u30ad\u30eb2CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill2-ct"},"color":"red"},{"text":" \u30b9\u30ad\u30eb3CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill3-ct"},"color":"red"},{"text":" FP","color":"aqua"},{"text":":"},{"score":{"name":"@s","objective":"FocusPoint"},"color":"blue"}]
#battle mode: non-ob stamina regen
execute if score #Helper tick-sec_conv = #Helper tick-max as @a[predicate=!ship-based-pvp-datapacks:ob-overheat,predicate=!ship-based-pvp-datapacks:overed-boost,scores={stamina=..19}] at @s if score #Helper CombatMode matches 0..2 run effect give @s saturation 1 0 true
#common process but tick start
#矢弾回収不可: 矢弾の回収が出来ない。
execute as @e[type=arrow,nbt={inGround:true}] at @s run data modify entity @s pickup set value 2b
kill @e[type=arrow,nbt={inGround:true,life:100s}]
#通常矢弾回収不可: トレジャーボックス内の通常矢弾を回収出来ない。専用矢弾しか使えない。

#common process but tick end

#Seconds Process
execute if score #Helper tick-sec_conv = #Helper tick-max run function #ship-based-pvp-datapacks:call-secondprocess
#tick-second converter(Reset)
execute if score #Helper tick-sec_conv = #Helper tick-max run scoreboard players set #Helper tick-sec_conv 0
