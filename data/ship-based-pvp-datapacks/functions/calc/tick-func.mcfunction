#tick処理です
#tick-second converter(Count Up)
execute if score #Helper tick-sec_conv < #Helper tick-max run scoreboard players add #Helper tick-sec_conv 1
#battle mode: ct&fp display
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=1..}] at @s run title @s actionbar ["",{"text":"\u30b9\u30ad\u30eb1CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill1-ct"},"color":"red"},{"text":" \u30b9\u30ad\u30eb2CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill2-ct"},"color":"red"},{"text":" \u30b9\u30ad\u30eb3CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill3-ct"},"color":"red"},{"text":" FP","color":"aqua"},{"text":":"},{"score":{"name":"@s","objective":"FocusPoint"},"color":"blue"}]
#battle mode: non-ob stamina regen
execute if score #Helper tick-sec_conv = #Helper tick-max as @a[predicate=!ship-based-pvp-datapacks:ob-overheat,predicate=!ship-based-pvp-datapacks:overed-boost,scores={stamina=..19}] at @s if score #Helper CombatMode matches 0..2 run effect give @s saturation 1 0 true
#Seconds Process
execute if score #Helper tick-sec_conv = #Helper tick-max run function #ship-based-pvp-datapacks:call-secondprocess
#tick-second converter(Reset)
execute if score #Helper tick-sec_conv = #Helper tick-max run scoreboard players set #Helper tick-sec_conv 0
