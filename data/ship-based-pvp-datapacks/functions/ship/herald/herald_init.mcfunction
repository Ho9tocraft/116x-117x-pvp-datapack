#イニシャライザ(伝令)
#head
execute as @s[scores={ship-num=4}] at @s run item replace entity @s armor.head with leather_helmet{display: {Name: '{"text":"伝令の兜","color":"white","bold":true,"italic":false}', color: 15987699}, HideFlags: 5, Unbreakable: 1b, citTexture: Herald, Enchantments: [{id: "minecraft:protection", lvl: 3s}, {id: "minecraft:fire_protection", lvl: 4s}, {id: "minecraft:mending", lvl: 1s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 2, Operation: 0, UUID: [I; 689305276, -37076204, -1475603441, -2074018471], Slot: "head"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 2, Operation: 0, UUID: [I; 584354037, -1035253151, -1400193512, -1672250027], Slot: "head"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 0.75d, Operation: 2, UUID: [I; -2098499465, 837764084, -1515467634, 1196161173], Slot: "head"}]} 1
#chest
execute as @s[scores={ship-num=4}] at @s run item replace entity @s armor.chest with leather_chestplate{display: {Name: '{"text":"伝令の鎧","color":"white","bold":true,"italic":false}', color: 15987699}, HideFlags: 5, Unbreakable: 1b, citTexture: Herald, Enchantments: [{id: "minecraft:protection", lvl: 3s}, {id: "minecraft:fire_protection", lvl: 4s}, {id: "minecraft:mending", lvl: 1s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 8, Operation: 0, UUID: [I; 1154126077, 1895320229, -1414802569, -2001974958], Slot: "chest"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 6, Operation: 0, UUID: [I; -615104213, -51754442, -1636839603, -20892225], Slot: "chest"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 0.75d, Operation: 2, UUID: [I; 1358908822, 1688618444, -1369027959, -850611280], Slot: "chest"}]} 1
#legs
execute as @s[scores={ship-num=4}] at @s run item replace entity @s armor.legs with leather_leggings{display: {Name: '{"text":"伝令のズボン","color":"white","bold":true,"italic":false}', color: 15987699}, HideFlags: 5, Unbreakable: 1b, citTexture: Herald, Enchantments: [{id: "minecraft:protection", lvl: 3s}, {id: "minecraft:fire_protection", lvl: 4s}, {id: "minecraft:mending", lvl: 1s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 6, Operation: 0, UUID: [I; 1629549931, 842285681, -1671167118, -189029052], Slot: "legs"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 5, Operation: 0, UUID: [I; 883474364, 297747950, -1183628390, 739863493], Slot: "legs"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 0.75d, Operation: 2, UUID: [I; 1072276945, 2036679617, -1596807246, 376430916], Slot: "legs"}]} 1
#feet
execute as @s[scores={ship-num=4}] at @s run item replace entity @s armor.feet with leather_boots{display: {Name: '{"text":"伝令のブーツ","color":"white","bold":true,"italic":false}', color: 15987699}, HideFlags: 5, Unbreakable: 1b, citTexture: Herald, Enchantments: [{id: "minecraft:protection", lvl: 3s}, {id: "minecraft:fire_protection", lvl: 4s}, {id: "minecraft:mending", lvl: 1s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 4, Operation: 0, UUID: [I; -1252858531, 406472077, -1400174939, -1864878395], Slot: "feet"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 3, Operation: 0, UUID: [I; 986815767, 1993425890, -2051281242, -671867519], Slot: "feet"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 0.75d, Operation: 2, UUID: [I; -1127153291, 1843023030, -1470570746, 123707672], Slot: "feet"}]} 1
#mainhand(slot 0)
execute as @s[scores={ship-num=4}] at @s run item replace entity @s hotbar.0 with trident{HideFlags: 5, Unbreakable: 1b, citTexture: Herald, Enchantments: [{id: "minecraft:loyalty", lvl: 3s}, {id: "minecraft:impaling", lvl: 9s}], AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -0.15d, Operation: 2, UUID: [I; 1146710866, 906645272, -1197136196, 2023413198], Slot: "mainhand"}, {AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 11, Operation: 0, UUID: [I; -1780617438, 2110343062, -1661131783, -975596419], Slot: "mainhand"}, {AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 0.2d, Operation: 2, UUID: [I; -1633068259, -232766734, -1602459369, 1391730736], Slot: "mainhand"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 0.95d, Operation: 2, UUID: [I; 1850522218, 1808812363, -1601966243, -1418454965], Slot: "mainhand"}]} 1
#offhand
execute as @s[scores={ship-num=4}] at @s run item replace entity @s weapon.offhand with totem_of_undying 1
#estus(slot 1)
execute as @s[scores={ship-num=4}] at @s run item replace entity @s hotbar.1 with orange_dye{display: {Name: '{"text":"エスト瓶","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"HPを回復","color":"white"}]']}, HideFlags: 1, citTexture: Estus, Enchantments: [{}]} 8
#ashen estus(slot 2)
execute as @s[scores={ship-num=4}] at @s run item replace entity @s hotbar.2 with light_blue_dye{display: {Name: '{"text":"エストの灰瓶","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"FPを回復","color":"white"}]']}, HideFlags: 1, citTexture: Estus, Enchantments: [{}]} 7
#tears of denial(Unique skill, slot 3)
execute as @s[scores={ship-num=4}] at @s run item replace entity @s hotbar.3 with ghast_tear{display: {Name: '{"text":"惜別の涙","color":"gold","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"即死級ダメージを受けた際に踏みとどまる","color":"yellow"}]', '[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"120 seconds","color":"yellow"}]']}, citTexture: Denial} 1
#FP
execute as @s[scores={ship-num=4}] at @s run scoreboard players set @s FocusPoint 200
#omake
execute as @s[scores={ship-num=4}] at @s run item replace entity @s hotbar.8 with written_book{pages: ['["",{"text":"HP:","bold":true},{"text":" 60\\n","color":"reset"},{"text":"FP:","bold":true},{"text":" 200\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668:","bold":true},{"text":" \\u30c8\\u30e9\\u30a4\\u30c7\\u30f3\\u30c8\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9:","bold":true},{"text":" \\u4e0d\\u6b7b\\u306e\\u30c8\\u30fc\\u30c6\\u30e0\\n\\u4e0d\\u6b7b\\u306e\\u30c8\\u30fc\\u30c6\\u30e0\\u3092\\u5229\\u7528\\u3057\\u3066\\u306e\\u6226\\u95d8\\u3092\\u5f97\\u610f\\u3068\\u3059\\u308b\\u8077\\u696d\\u3060\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u60dc\\u5225\\u306e\\u6d99\\u300d\\n\\u4e0d\\u6b7b\\u306e\\u30c8\\u30fc\\u30c6\\u30e0\\u3092\\u518d\\u5ea6\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9\\u306b\\u51fa\\u73fe\\u3055\\u305b\\u308b\\n\\u305d\\u306e\\u6027\\u8cea\\u4e0a \\u8a66\\u5408\\u958b\\u59cb\\u76f4\\u5f8c\\u306b\\u306f\\u4f7f\\u3048\\u306a\\u3044","color":"reset"}]'], title: "職業説明文(伝令)", author: ho9tocraft, shipbased: true}



