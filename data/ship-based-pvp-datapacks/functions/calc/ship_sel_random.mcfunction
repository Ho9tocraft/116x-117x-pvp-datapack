#職業選択ランダム化
#あいすと氏の要望により実装

#職業名データ
#TODO: ボンバーマン、死霊術師、裁定者、墓守、花の魔術師の実装、あいすと氏提案職業の名称決定
data modify storage ship-based-pvp-datapacks:ship-name-data shipData set value ["騎士","傭兵","戦士","伝令","魔術師","火継ぎの魂振","やつしの狩人","持たざる者","略奪者","暗月の剣","姫騎士","抑止の守護者","召喚士","バニーダンサー","ボンバーマン","鴉人","死霊術師","裁定者","墓守","花の魔術師"]

#region x=-186,y=11,z=-56に防具立てをスポーン。防具立てには識別用の棒を持たせる
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:1},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:2},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:3},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:4},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:5},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:6},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:7},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:8},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:9},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:10},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:11},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:12},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:13},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:14},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
summon armor_stand -186 11 -56 {HandItems:[{id:"minecraft:stick",tag:{shipIds:16},Count:1b},{}],Invisible:true,Tags:["ship-sel"],ShowArms:true}
#endregion

#ランダム選択
execute as @e[type=armor_stand,sort=random,tag=ship-sel,limit=1] at @s run tag @s add selected

#region 職業選択結果を通知
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:1},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 1
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:2},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 2
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:3},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 3
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:4},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 4
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:5},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 5
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:6},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 6
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:7},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 7
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:8},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 8
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:9},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 9
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:10},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 10
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:11},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 11
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:12},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 12
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:13},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 13
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:14},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 14
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:16},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 16
execute if entity @e[type=armor_stand,tag=ship-sel,tag=selected,nbt={HandItems:[{id:"minecraft:stick",tag:{shipIds:17},Count:1b},{}]}] as @s at @s run scoreboard players set @s ship-num 17
execute as @s at @s run function ship-based-pvp-datapacks:calc/ship_selection/ship-sel-result
#endregion

#発生させたアマスタを削除
execute as @e[type=armor_stand,tag=ship-sel] at @s run kill @s
