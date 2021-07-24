#投影…開始
execute as @a[scores={skill3-ct=0,ship-num=12,TraceOn=0..2,FocusPoint=30..},predicate=ship-based-pvp-datapacks:trace_on] at @s run scoreboard players add @s TraceOn 1
#モドシ
execute as @a[scores={skill3-ct=0,ship-num=12,TraceOn=3}] run scoreboard players set @s TraceOn 0
#黒塗りの弓 + 赤原猟犬
execute as @a[scores={skill3-ct=0,ship-num=12,TraceOn=0,FocusPoint=30..},predicate=ship-based-pvp-datapacks:trace_on] at @s run item replace entity @s hotbar.0 with bow{display:{Name:'{"text":"黒塗りの弓","color":"dark_gray","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:CG,Enchantments:[{id:"minecraft:power",lvl:6s},{id:"minecraft:infinity",lvl:1s}]} 1
execute as @a[scores={skill3-ct=0,ship-num=12,TraceOn=0,FocusPoint=30..},predicate=ship-based-pvp-datapacks:trace_on] at @s run item replace entity @s weapon.offhand with tipped_arrow{display:{Name:'{"text":"赤原猟犬","color":"red","bold":true,"italic":false}'},citTexture:Flundings,CustomPotionEffects:[{Id:7b,Amplifier:0b,Duration:1}]} 7
#投影・真伝結月刀
execute as @a[scores={skill3-ct=0,ship-num=12,TraceOn=1,FocusPoint=30..},predicate=ship-based-pvp-datapacks:trace_on] at @s run item replace entity @s hotbar.0 with netherite_sword{display:{Name:'{"text":"偽・真伝・結月刀「付喪」／淨","color":"#F4B3C2","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Tamafuri,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:fire_aspect",lvl:2s},{id:"minecraft:sweeping",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I; -1111950551,559893464,-1948571585,-2086595062],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:3,Operation:0,UUID:[I; -81255998,1132282968,-1324018224,-2005275501],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.15d,Operation:2,UUID:[I; -145581990,-658947321,-1127181419,1853902488],Slot:"mainhand"}]} 1
#投影・エクスカリバーイマージュ
execute as @a[scores={skill3-ct=0,ship-num=12,TraceOn=2,FocusPoint=30..},predicate=ship-based-pvp-datapacks:trace_on] at @s run item replace entity @s hotbar.0 with golden_sword{display:{Name:'{"text":"永久に遥か黄金の剣","color":"yellow","bold":true,"italic":false}'},HideFlags:5,Damage:32,citTexture:Excalibur,Enchantments:[{id:"minecraft:sharpness",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:40,Operation:0,UUID:[I;411573831,1732923358,-1997890999,-1541422727],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5,Operation:2,UUID:[I;-473233140,-637973098,-1302423132,-1715572565],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.25,Operation:2,UUID:[I;1910328068,440223868,-1820152583,736316465],Slot:"mainhand"}]} 1
#各種効果

#赤原猟犬: 
# 矢を軸とした半径15mの敵をターゲットし、追従する。スニークの必要はない。また、FPも消費しない。
execute as @a[scores={ship-num=12,TraceOn=0},predicate=ship-based-pvp-datapacks:flundings] at @s as @e[type=arrow,distance=..3] at @s run tag @s add FLUNDINGS
execute as @a[scores={ship-num=12,TraceOn=0},predicate=ship-based-pvp-datapacks:flundings,team=Red] at @s as @e[type=arrow,distance=..3,tag=FLUNDINGS] at @s run tag @s add FLUNDINGS_RED
execute as @a[scores={ship-num=12,TraceOn=0},predicate=ship-based-pvp-datapacks:flundings,team=Blue] at @s as @e[type=arrow,distance=..3,tag=FLUNDINGS] at @s run tag @s add FLUNDINGS_BLU
execute as @e[type=arrow,tag=FLUNDINGS] at @s run particle dust 1.000 0.271 0.000 1 ~ ~ ~ 0.15 0.15 0.15 1 10 normal
execute as @e[type=arrow,tag=FLUNDINGS,tag=FLUNDINGS_RED,nbt={inGround:false}] at @s facing entity @e[team=Blue,distance=0.5..15,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1.5
execute as @e[type=arrow,tag=FLUNDINGS,tag=FLUNDINGS_BLU,nbt={inGround:false}] at @s facing entity @e[team=Red,distance=0.5..15,sort=nearest,limit=1] eyes run tp @s ^ ^ ^1.5
# 弾数が1になった時、FPを5消費して赤原猟犬を自動装填(CT:10 sec, FP最低30必須)
execute if score #Helper CombatMode matches 2 as @a[scores={ship-num=12,TraceOn=0,skill3-ct=0,FocusPoint=30..},predicate=ship-based-pvp-datapacks:flundings_reload] at @s run scoreboard players remove @s FocusPoint 5
execute if score #Helper CombatMode matches 2 as @a[scores={ship-num=12,TraceOn=0,skill3-ct=0,FocusPoint=25..},predicate=ship-based-pvp-datapacks:flundings_reload] at @s run item replace entity @s weapon.offhand with tipped_arrow{display:{Name:'{"text":"赤原猟犬","color":"red","bold":true,"italic":false}'},citTexture:Flundings,CustomPotionEffects:[{Id:7b,Amplifier:0b,Duration:1}]} 7

#永久に遥か黄金の剣:
# 大まかな仕様は「霊魂の太刀」や「太陽の光の槍」と同じ
# 唯一の違いは、「判定が『自身より最も遠い半径40mのプレイヤー』に着弾し、そこから『半径10mの敵すべて』にダメージが発生する」という点
# ビームではなく、特殊誘導弾という体をとっている。
#  赤陣営
execute as @a[scores={ship-num=12,TraceOn=2,skill3-ct=0},team=Red,predicate=ship-based-pvp-datapacks:excalibur-imagine] at @s positioned as @a[team=Blue,limit=1,sort=furthest,distance=..40] as @e[team=Blue,distance=..10,type=!#ship-based-pvp-datapacks:undead] run effect give @s instant_damage 1 2 false
execute as @a[scores={ship-num=12,TraceOn=2,skill3-ct=0},team=Red,predicate=ship-based-pvp-datapacks:excalibur-imagine] at @s positioned as @a[team=Blue,limit=1,sort=furthest,distance=..40] as @e[team=Blue,distance=..10,type=#ship-based-pvp-datapacks:undead] run effect give @s instant_health 1 2 false
execute as @a[scores={ship-num=12,TraceOn=2,skill3-ct=0},team=Red,predicate=ship-based-pvp-datapacks:excalibur-imagine] at @s positioned as @a[team=Blue,limit=1,sort=furthest,distance=..40] run particle dust 0.902 0.706 0.133 1 ~ ~ ~ 10 20 10 1 2500 normal
#  青陣営
execute as @a[scores={ship-num=12,TraceOn=2,skill3-ct=0},team=Blue,predicate=ship-based-pvp-datapacks:excalibur-imagine] at @s positioned as @a[team=Blue,limit=1,sort=furthest,distance=..40] as @e[team=Red,distance=..10,type=!#ship-based-pvp-datapacks:undead] run effect give @s instant_damage 1 2 false
execute as @a[scores={ship-num=12,TraceOn=2,skill3-ct=0},team=Blue,predicate=ship-based-pvp-datapacks:excalibur-imagine] at @s positioned as @a[team=Blue,limit=1,sort=furthest,distance=..40] as @e[team=Red,distance=..10,type=#ship-based-pvp-datapacks:undead] run effect give @s instant_health 1 2 false
execute as @a[scores={ship-num=12,TraceOn=2,skill3-ct=0},team=Blue,predicate=ship-based-pvp-datapacks:excalibur-imagine] at @s positioned as @a[team=Blue,limit=1,sort=furthest,distance=..40] run particle dust 0.902 0.706 0.133 1 ~ ~ ~ 10 20 10 1 2500 normal

#FP
execute as @a[scores={ship-num=12,skill3-ct=0,FocusPoint=30..},predicate=ship-based-pvp-datapacks:trace_on] at @s run scoreboard players remove @s FocusPoint 30

#CT
# 投影: 20 sec
# 永久に遥か黄金の剣: 45 sec
# フルンディング自動装填: 10 sec
execute as @a[scores={ship-num=12,skill3-ct=0},predicate=ship-based-pvp-datapacks:trace_on] at @s run scoreboard players set @s skill3-ct 20
execute as @a[scores={ship-num=12,skill3-ct=0,TraceOn=2},predicate=ship-based-pvp-datapacks:excalibur-imagine] at @s run scoreboard players set @s skill3-ct 45
execute as @a[scores={ship-num=12,TraceOn=0,skill3-ct=0},predicate=ship-based-pvp-datapacks:flundings_unload] at @s run scoreboard players set @s skill3-ct 10

#FP不足時のCT
# 一律 5 sec
execute as @a[scores={ship-num=12,skill3-ct=..5,FocusPoint=..29}] at @s run scoreboard players set @s skill3-ct 5

