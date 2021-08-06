#イニシャライザ（姫騎士）
#head
execute as @s[scores={ship-num=11}] at @s run item replace entity @s armor.head with leather_helmet{display:{Name:'{"text":"聖職者のフード","color":"white","bold":true,"italic":false}',color:10506797},HideFlags:5,Unbreakable:1b,citTexture:Cleric,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I; -1668018904,1780239371,-1520172401,335255654],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I; 775907026,705842640,-2127898864,-1568147888],Slot:"head"}]} 1
#chest
execute as @s[scores={ship-num=11}] at @s run item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"聖職者の手甲","color":"white","bold":true,"italic":false}',color:10506797},HideFlags:5,Unbreakable:1b,citTexture:Cleric,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I; 1175365866,-214086655,-1479660785,1209188891],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5d,Operation:2,UUID:[I; 1302551509,1522617470,-2108923497,-388093251],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I; 1606410578,1477921995,-1724849929,1386933826],Slot:"chest"}]} 1
#legs
execute as @s[scores={ship-num=11}] at @s run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"聖職者の鎧足甲","color":"white","bold":true,"italic":false}',color:10506797},HideFlags:5,Unbreakable:1b,citTexture:Cleric,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I; 114139802,1065174295,-1695881513,-565065563],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I; -1734621630,253315346,-1864754853,1516432814],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I; 140026421,-1107146141,-1406235974,-663214011],Slot:"legs"}]} 1
#feet
execute as @s[scores={ship-num=11}] at @s run item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"聖職者の施し","color":"white","bold":true,"italic":false}',color:10506797},HideFlags:5,Unbreakable:1b,citTexture:Cleric,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:projectile_protection",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I; -1742691248,1009994945,-1469204716,-1767881998],Slot:"feet"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2d,Operation:2,UUID:[I; 589987090,665734347,-1560739994,-886099498],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I; -84965291,1812483986,-1150769948,-1516042604],Slot:"feet"}]} 1
#mainhand
execute as @s[scores={ship-num=11}] at @s run item replace entity @s hotbar.0 with golden_sword{display:{Name:'{"text":"竜狩りの剣槍","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"使用キー:","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果:","color":"gray","bold":true,"italic":false},{"text":"落雷を発生させる","color":"yellow"}]','[{"text":"CT:","color":"gray","bold":true,"italic":false},{"text":"30 secs ","color":"yellow"},{"text":"Act:","color":"gray"},{"text":"ALL","color":"yellow"}]']},HideFlags:1,Unbreakable:1b,citTexture:NamelessKing,tier:2b,Enchantments:[{id:"minecraft:sharpness",lvl:6s},{id:"minecraft:unbreaking",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:25,Operation:0,UUID:[I; -1980251391,1372669067,-1467575732,213178079],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.2d,Operation:0,UUID:[I; -697281960,-1618653341,-1158741588,579836565],Slot:"mainhand"}]} 1
#ashen estus
execute as @s[scores={ship-num=11}] at @s run item replace entity @s hotbar.1 with light_blue_dye{display:{Name:'{"text":"エストの灰瓶","bold":true,"italic":false}',Lore:['[{"text":"使用キー:","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果:","color":"gray","bold":true,"italic":false},{"text":"FPを回復","color":"white"}]']},HideFlags:1,citTexture:Estus,Enchantments:[{}]} 15
#soothing sunlight
execute as @s[scores={ship-num=11}] at @s run item replace entity @s hotbar.2 with orange_dye{display:{Name:'{"text":"太陽の光の癒し","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"使用キー:","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果:","color":"gray","bold":true,"italic":false},{"text":"範囲内の自分を含む味方を回復","color":"yellow"}]','[{"text":"CT:","color":"gray","bold":true,"italic":false},{"text":"20 seconds","color":"yellow"}]']},HideFlags:1,citTexture:Sunlight,Enchantments:[{id:"minecraft:fortune",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.5d,Operation:2,UUID:[I; 1058183296,-48873212,-1146102934,89574381],Slot:"mainhand"}]} 1
#sunlight spear
execute as @s[scores={ship-num=11}] at @s run item replace entity @s hotbar.3 with yellow_dye{display:{Name:'{"text":"太陽の光の槍","color":"yellow","bold":true,"italic":false}',Lore:['[{"text":"使用キー:","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果:","color":"gray","bold":true,"italic":false},{"text":"敵ひとりに雷の槍を放つ","color":"yellow"}]','[{"text":"CT:","color":"gray","bold":true,"italic":false},{"text":"4 sec","color":"red"}]']},citTexture:SunlightSpear} 1
#FocusPoint
execute as @s[scores={ship-num=11}] at @s run scoreboard players set @s FocusPoint 300
#How to use Book
execute as @s[scores={ship-num=11}] at @s run item replace entity @s hotbar.8 with written_book{pages:['["",{"text":"HP:","bold":true},{"text":" 60\\n","color":"reset"},{"text":"FP:","bold":true},{"text":" 300\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668:","bold":true},{"text":" \\u7adc\\u72e9\\u308a\\u306e\\u5263\\u69cd\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9:","bold":true},{"text":" \\u306a\\u3057\\n\\u3057\\u3083\\u304c\\u3080\\u3068\\u6226\\u6280\\u300c\\u843d\\u96f7\\u300d\\u3092\\u4f7f\\u3048\\u308b\\uff08\\u30af\\u30fc\\u30eb\\u30bf\\u30a4\\u30e0:20\\u79d2\\uff09\\u6b66\\u5668\\u300c\\u7adc\\u72e9\\u308a\\u306e\\u5263\\u69cd\\u300d\\u3092\\u6301\\u3064\\u8077\\u696d\\u3002\\n\\u59eb\\u3089\\u3057\\u304f\\u300c\\u592a\\u967d\\u306e\\u5149\\u306e\\u7652\\u3057\\u300d\\u3092\\u6301\\u3064\\u4ed6\\u3001\\u300c\\u592a\\u967d\\u306e\\u5149\\u306e\\u69cd\\u300d\\u3092\\u6301\\u3064\\u3002","color":"reset"}]','{"text":"\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u592a\\u967d\\u306e\\u5149\\u306e\\u7652\\u3057\\uff0f\\u69cd\\u300d\\n\\u592a\\u967d\\u306e\\u5149\\u306e\\u7652\\u3057\\u306fCT\\u53ca\\u3073\\u81ea\\u5df1\\u56de\\u5fa9\\u91cf\\u306f\\u706b\\u7d99\\u304e\\u306e\\u9b42\\u632f\\u306b\\u52a3\\u308b\\u304c\\u3001\\u6d88\\u8cbbFP\\u3001\\u7bc4\\u56f2\\u56de\\u5fa9\\u91cf\\u306f\\u305d\\u308c\\u3092\\u4e0a\\u56de\\u308b\\u3002\\n\\u307e\\u305f\\u3001\\u96f7\\u5947\\u8de1\\u306e\\u4e2d\\u3067\\u6700\\u5f37\\u306e\\u30b9\\u30da\\u30eb\\u3092\\u4f7f\\u7528\\u3067\\u304d\\u308b\\u3002"}'],title:"職業説明文(姫騎士)",author:princess,shipbased:true}

