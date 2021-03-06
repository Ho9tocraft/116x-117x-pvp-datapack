#tick処理です
#tick-second converter(Count Up)
execute if score #Helper tick-sec_conv < #Helper tick-max run scoreboard players add #Helper tick-sec_conv 1
#tickloop-scores
execute if score #Helper stage-sel-rand matches ..19 run scoreboard players add #Helper stage-sel-rand 1
execute if score #Helper stage-sel-rand matches 20 run scoreboard players set #Helper stage-sel-rand 0
execute as @a[team=Red] at @s run scoreboard players operation @s health-red = @s health-spectate
execute as @a[team=Red] at @s run scoreboard players reset @s health-blue
execute as @a[team=Blue] at @s run scoreboard players operation @s health-blue = @s health-spectate
execute as @a[team=Blue] at @s run scoreboard players reset @s health-red
#battle mode: ct&fp display
#コメント: 得点表示の仕様は不死の闘技（ダークソウル3: Ashes of the Ariandel）に寄せる
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=1..},team=Red] at @s run title @s actionbar ["",{"text":"\u30b9\u30ad\u30eb1CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill1-ct"},"color":"red"},{"text":" \u30b9\u30ad\u30eb2CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill2-ct"},"color":"red"},{"text":" \u30b9\u30ad\u30eb3CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill3-ct"},"color":"red"},{"text":" FP","color":"aqua"},{"text":":"},{"score":{"name":"@s","objective":"FocusPoint"},"color":"blue"},{"text":" SP","color":"red"},{"text":":"},{"score":{"name":"@s","objective":"awake_gauge"},"color":"dark_red"},{"text": " チーム得点","color": "gold"},{"text": ":"},{"score":{"name": "#Helper","objective": "point-red"}}]
execute if score #Helper CombatMode matches 0..2 as @a[scores={ship-num=1..},team=Blue] at @s run title @s actionbar ["",{"text":"\u30b9\u30ad\u30eb1CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill1-ct"},"color":"red"},{"text":" \u30b9\u30ad\u30eb2CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill2-ct"},"color":"red"},{"text":" \u30b9\u30ad\u30eb3CT","color":"gold"},{"text":":"},{"score":{"name":"@s","objective":"skill3-ct"},"color":"red"},{"text":" FP","color":"aqua"},{"text":":"},{"score":{"name":"@s","objective":"FocusPoint"},"color":"blue"},{"text":" SP","color":"red"},{"text":":"},{"score":{"name":"@s","objective":"awake_gauge"},"color":"dark_red"},{"text": " チーム得点","color": "gold"},{"text": ":"},{"score":{"name": "#Helper","objective": "point-blue"}}]
#battle mode: non-ob stamina regen
execute if score #Helper tick-sec_conv = #Helper tick-max as @a[predicate=!ship-based-pvp-datapacks:ob-overheat,predicate=!ship-based-pvp-datapacks:overed-boost,scores={stamina=..19}] at @s if score #Helper CombatMode matches 0..2 run effect give @s saturation 1 0 true
#common process but tick start
#矢弾回収不可: 矢弾の回収が出来ない。
execute as @e[type=arrow,nbt={inGround:true}] at @s run data modify entity @s pickup set value 2b
kill @e[type=arrow,nbt={inGround:true,life:100s}]

#覚醒ゲージチャージ: 覚醒ゲージのチャージングを実行する。
execute if score #Helper CombatMode matches 1..2 as @e[scores={awake_gauge=..1599}] at @s if score #Helper tick-sec_conv matches 5 run scoreboard players add @s awake_gauge 1
execute if score #Helper CombatMode matches 1..2 as @e[scores={awake_gauge=..1599}] at @s if score #Helper tick-sec_conv matches 10 run scoreboard players add @s awake_gauge 1
execute if score #Helper CombatMode matches 1..2 as @e[scores={awake_gauge=..1599}] at @s if score #Helper tick-sec_conv matches 15 run scoreboard players add @s awake_gauge 1
execute if score #Helper CombatMode matches 1..2 as @e[scores={awake_gauge=..1599}] at @s if score #Helper tick-sec_conv matches 20 run scoreboard players add @s awake_gauge 1

#FCS: 索敵レーダー
execute if score #Helper CombatMode matches 1..2 as @a[scores={ship-num=1..},team=Red] at @s if score #Helper tick-sec_conv matches 10 if entity @a[scores={ship-num=1..},team=Blue,distance=15..30] run playsound block.note_block.harp master @s ~ ~ ~ 100 1.0 1.0
execute if score #Helper CombatMode matches 1..2 as @a[scores={ship-num=1..},team=Blue] at @s if score #Helper tick-sec_conv matches 10 if entity @a[scores={ship-num=1..},team=Red,distance=15..30] run playsound block.note_block.harp master @s ~ ~ ~ 100 1.0 1.0
execute if score #Helper CombatMode matches 1..2 as @a[scores={ship-num=1..},team=Red] at @s if score #Helper tick-sec_conv matches 20 if entity @a[scores={ship-num=1..},team=Blue,distance=15..30] run playsound block.note_block.harp master @s ~ ~ ~ 100 1.0 1.0
execute if score #Helper CombatMode matches 1..2 as @a[scores={ship-num=1..},team=Blue] at @s if score #Helper tick-sec_conv matches 20 if entity @a[scores={ship-num=1..},team=Red,distance=15..30] run playsound block.note_block.harp master @s ~ ~ ~ 100 1.0 1.0

execute if score #Helper CombatMode matches 1..2 as @a[scores={ship-num=1..},team=Red] at @s if score #Helper tick-sec_conv matches 10 if entity @a[scores={ship-num=1..},team=Blue,distance=..15] run playsound block.note_block.harp master @s ~ ~ ~ 100 2.0 1.0
execute if score #Helper CombatMode matches 1..2 as @a[scores={ship-num=1..},team=Blue] at @s if score #Helper tick-sec_conv matches 10 if entity @a[scores={ship-num=1..},team=Red,distance=..15] run playsound block.note_block.harp master @s ~ ~ ~ 100 2.0 1.0
execute if score #Helper CombatMode matches 1..2 as @a[scores={ship-num=1..},team=Red] at @s if score #Helper tick-sec_conv matches 20 if entity @a[scores={ship-num=1..},team=Blue,distance=..15] run playsound block.note_block.harp master @s ~ ~ ~ 100 2.0 1.0
execute if score #Helper CombatMode matches 1..2 as @a[scores={ship-num=1..},team=Blue] at @s if score #Helper tick-sec_conv matches 20 if entity @a[scores={ship-num=1..},team=Red,distance=..15] run playsound block.note_block.harp master @s ~ ~ ~ 100 2.0 1.0

#guardbreak: ガードブレイク処理（暫定）
function ship-based-pvp-datapacks:tick-process/guardbreak

#common process but tick end

#Seconds Process
execute if score #Helper tick-sec_conv = #Helper tick-max run function #ship-based-pvp-datapacks:call-secondprocess
#tick-second converter(Reset)
execute if score #Helper tick-sec_conv = #Helper tick-max run scoreboard players set #Helper tick-sec_conv 0
