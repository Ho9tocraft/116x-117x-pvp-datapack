#イニシャライザ(騎士)
#head
execute as @s[scores={ship-num=1}] at @s run item replace entity @s armor.head with iron_helmet{display: {Name: '{"text":"騎士のヘルメット","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Knight, Enchantments: [{id: "minecraft:protection", lvl: 4s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 4, Operation: 0, UUID: [I; -188820712, -811642938, -1943014700, -1065914662], Slot: "head"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 2, Operation: 0, UUID: [I; -589254971, -1373026953, -1719830906, -1742527805], Slot: "head"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; -587844247, -290044840, -1383721191, -1724998385], Slot: "head"}]} 1
#chest
execute as @s[scores={ship-num=1}] at @s run item replace entity @s armor.chest with iron_chestplate{display: {Name: '{"text":"騎士のチェストプレート","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Knight, Enchantments: [{id: "minecraft:protection", lvl: 5s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 16, Operation: 0, UUID: [I; -188820713, -811642938, -1943014700, -1065914662], Slot: "chest"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 6, Operation: 0, UUID: [I; -589254972, -1373026953, -1719830906, -1742527805], Slot: "chest"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; -587844248, -290044840, -1383721191, -1724998385], Slot: "chest"}]} 1
#legs
execute as @s[scores={ship-num=1}] at @s run item replace entity @s armor.legs with iron_leggings{display: {Name: '{"text":"騎士のレギンス","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Knight, Enchantments: [{id: "minecraft:protection", lvl: 5s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 12, Operation: 0, UUID: [I; -188820714, -811642938, -1943014700, -1065914662], Slot: "legs"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 5, Operation: 0, UUID: [I; -589254973, -1373026953, -1719830906, -1742527805], Slot: "legs"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; -587844249, -290044840, -1383721191, -1724998385], Slot: "legs"}]} 1
#feet
execute as @s[scores={ship-num=1}] at @s run item replace entity @s armor.feet with iron_boots{display: {Name: '{"text":"騎士のブーツ","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Knight, Enchantments: [{id: "minecraft:protection", lvl: 4s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 8, Operation: 0, UUID: [I; -188820715, -811642938, -1943014700, -1065914662], Slot: "feet"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 2, Operation: 0, UUID: [I; -589254974, -1373026953, -1719830906, -1742527805], Slot: "feet"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; -587844250, -290044840, -1383721191, -1724998385], Slot: "feet"}, {AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: -0.35d, Operation: 2, UUID: [I; -480212467, -1903278924, -1457421938, 1366595075], Slot: "feet"}]} 1
#mainhand
execute as @s[scores={ship-num=1}] at @s run item replace entity @s hotbar.0 with iron_sword{display: {Name: '{"text":"ロングソード","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, Enchantments: [{id: "minecraft:sharpness", lvl: 5s}], AttributeModifiers: [{AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 6, Operation: 0, UUID: [I; -574794223, 338903675, -1992220076, -2143798635], Slot: "mainhand"}, {AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: 0.2d, Operation: 2, UUID: [I; 1234874664, -1950987924, -1351566647, 1871842131], Slot: "mainhand"}]} 1
#offhand
execute as @s[scores={ship-num=1}] at @s run item replace entity @s weapon.offhand with shield{display: {Name: '{"text":"騎士の盾","color":"white","bold":true,"italic":false}'}, HideFlags: 4, Unbreakable: 1b, Enchantments: [{}], AttributeModifiers: [{AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 6, Operation: 0, UUID: [I; 155563663, 1358515901, -1765194997, 681346411], Slot: "mainhand"}, {AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: 0.2d, Operation: 2, UUID: [I; -331724666, 61557214, -1932246542, -1148508427], Slot: "mainhand"}]} 1
#estus
execute as @s[scores={ship-num=1}] at @s run item replace entity @s hotbar.1 with orange_dye{display: {Name: '{"text":"エスト瓶","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"HPを回復","color":"white"}]']}, HideFlags: 1, citTexture: Estus, Enchantments: [{}]} 9
#ashen estus
execute as @s[scores={ship-num=1}] at @s run item replace entity @s hotbar.2 with light_blue_dye{display: {Name: '{"text":"エストの灰瓶","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"FPを回復","color":"white"}]']}, HideFlags: 1, citTexture: Estus, Enchantments: [{}]} 6
#unique skill
execute as @s[scores={ship-num=1}] at @s run item replace entity @s hotbar.3 with yellow_dye{display: {Name: '{"text":"固い誓い","color":"yellow","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"範囲内の味方に攻撃力上昇と防御力大幅上昇を付与（0:30）","color":"yellow","bold":true,"italic":false}]', '[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"40 seconds","color":"yellow"}]']}, HideFlags: 1, citTexture: Sacred-Oath, Enchantments: [{id: "minecraft:unbreaking", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: -0.5d, Operation: 2, UUID: [I; -480212467, -1903278924, -1457421938, 1366595075], Slot: "mainhand"}]} 1
#FP
execute as @s[scores={ship-num=1}] at @s run scoreboard players set @s FocusPoint 150
#omake
execute as @s[scores={ship-num=1}] at @s run item replace entity @s hotbar.8 with written_book{pages: ['["",{"text":"HP: ","bold":true},{"text":"80\\n","color":"reset"},{"text":"FP: ","bold":true},{"text":"150\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668: ","bold":true},{"text":"\\u30ed\\u30f3\\u30b0\\u30bd\\u30fc\\u30c9\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9: ","bold":true},{"text":"\\u9a0e\\u58eb\\u306e\\u76fe\\n\\u8077\\u696d\\u300c\\u6226\\u58eb\\u300d\\u306b\\u6b21\\u3050HP\\u91cf\\u3092\\u8a87\\u308b\\u8077\\u696d\\u3060\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u56fa\\u3044\\u8a93\\u3044\\u300d\\n\\u7bc4\\u56f2\\u5185\\u306e\\u5473\\u65b9\\u306b\\u9632\\u5fa1\\u529b\\u5927\\u5e45\\u4e0a\\u6607\\u3068\\u653b\\u6483\\u529b\\u4e0a\\u6607\\u304c\\u3064\\u304f","color":"reset"}]'], title: "職業説明文(騎士)", author: ho9tocraft, shipbased: true}
