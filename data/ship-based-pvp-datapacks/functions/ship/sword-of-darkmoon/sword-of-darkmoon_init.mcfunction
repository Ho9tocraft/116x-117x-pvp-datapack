#イニシャライザ（暗月の剣）
#head
execute as @s[scores={ship-num=10}] at @s run item replace entity @s armor.head with iron_helmet{display: {Name: '{"text":"カタリナヘルメット","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Catarina, Enchantments: [{id: "minecraft:protection", lvl: 4s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 4, Operation: 0, UUID: [I; -188828512, -811642938, -1943014700, -1065914662], Slot: "head"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 2, Operation: 0, UUID: [I; -589254971, -1373026953, -1719830906, -1742857805], Slot: "head"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; -587844247, -290044840, -1383721191, -854998385], Slot: "head"}]} 1
#chest
execute as @s[scores={ship-num=10}] at @s run item replace entity @s armor.chest with iron_chestplate{display: {Name: '{"text":"カタリナチェストプレート","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Catarina, Enchantments: [{id: "minecraft:protection", lvl: 5s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 16, Operation: 0, UUID: [I; -188850713, -811642938, -1943014700, -1065914662], Slot: "chest"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 6, Operation: 0, UUID: [I; -589254972, -1373026953, -1719830906, -1748527805], Slot: "chest"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; -587844248, -290049850, -1383721191, -1724998385], Slot: "chest"}]} 1
#legs
execute as @s[scores={ship-num=10}] at @s run item replace entity @s armor.legs with iron_leggings{display: {Name: '{"text":"カタリナレギンス","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Catarina, Enchantments: [{id: "minecraft:protection", lvl: 5s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 12, Operation: 0, UUID: [I; -188520714, -811642938, -1943014700, -1065914662], Slot: "legs"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 5, Operation: 0, UUID: [I; -589254973, -1373026953, -1719830985, -1742527805], Slot: "legs"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; -587844249, -290044840, -1383721191, -1728598385], Slot: "legs"}]} 1
#feet
execute as @s[scores={ship-num=10}] at @s run item replace entity @s armor.feet with iron_boots{display: {Name: '{"text":"カタリナブーツ","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Catarina, Enchantments: [{id: "minecraft:protection", lvl: 4s}, {id: "minecraft:binding_curse", lvl: 1s}], AttributeModifiers: [{AttributeName: "generic.max_health", Name: "generic.max_health", Amount: 8, Operation: 0, UUID: [I; -188820715, -811642938, -1943014700, -1065914662], Slot: "feet"}, {AttributeName: "generic.armor", Name: "generic.armor", Amount: 2, Operation: 0, UUID: [I; -589254974, -1385026953, -1719830906, -1742527805], Slot: "feet"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 1, Operation: 0, UUID: [I; -587844250, -290085840, -1383721191, -1724998385], Slot: "feet"}, {AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: -0.35d, Operation: 2, UUID: [I; -480212467, -1903278524, -1457421938, 1366595075], Slot: "feet"}]} 1
#mainhand
execute as @s[scores={ship-num=10}] at @s run item replace entity @s hotbar.0 with netherite_sword{display: {Name: '{"text":"狂王の磔","color":"dark_purple","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: kichigai, Enchantments: [{id: "minecraft:sharpness", lvl: 5s}, {id: "minecraft:knockback", lvl: 3s}, {id: "minecraft:fire_aspect", lvl: 3s}, {id: "minecraft:looting", lvl: 3s}], AttributeModifiers: [{AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 0.75d, Operation: 2, UUID: [I; -1713844501, -534360993, -1397111698, -1635505515], Slot: "mainhand"}]} 1
#offhand
execute as @s[scores={ship-num=9}] at @s run item replace entity @s weapon.offhand with crossbow{display: {Name: '{"text":"スナイパークロス","color":"white","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, Enchantments: [{id: "minecraft:power", lvl: 5s}, {id: "minecraft:multishot", lvl: 5s}, {id: "minecraft:piercing", lvl: 5s}, {id: "minecraft:quick_charge", lvl: 5s}], ChargedProjectiles: [{id: "minecraft:arrow", Count: 1b}, {id: "minecraft:arrow", Count: 1b}, {id: "minecraft:arrow", Count: 1b}], Charged: 1b} 1
#estus
execute as @s[scores={ship-num=10}] at @s run item replace entity @s hotbar.1 with orange_dye{display: {Name: '{"text":"エスト瓶","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"HPを回復","color":"white"}]']}, HideFlags: 1, citTexture: Estus, Enchantments: [{}]} 9
#ashen estus
execute as @s[scores={ship-num=10}] at @s run item replace entity @s hotbar.2 with light_blue_dye{display: {Name: '{"text":"エストの灰瓶","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"FPを回復","color":"white"}]']}, HideFlags: 1, citTexture: Estus, Enchantments: [{}]} 6
#狂王の気紛れ
execute as @s[scores={ship-num=10}] at @s run item replace entity @s hotbar.3 with netherite_scrap{display: {Name: '{"text":"狂王の気紛れ","color":"dark_purple","bold":true,"italic":false}'}, citTexture: kichigai} 1
#Focus Point
execute as @s[scores={ship-num=7}] at @s run scoreboard players set @s FocusPoint 300
#取扱説明書
execute as @s[scores={ship-num=10}] at @s run item replace entity @s hotbar.8 with written_book{pages:['["",{"text":"HP:","bold":true},{"text":" 80\\n","color":"reset"},{"text":"FP:","bold":true},{"text":" 300\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668:","bold":true},{"text":" \\u72c2\\u738b\\u306e\\u78d4\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9:","bold":true},{"text":" \\u30b9\\u30ca\\u30a4\\u30d1\\u30fc","color":"reset"},{"text":"\\u30ef\\u30ed\\u30b9","strikethrough":true},{"text":"\\u30af\\u30ed\\u30b9\\n\\u6697\\u6708\\u306e\\u9a0e\\u58eb\\u3092\\u30a4\\u30e1\\u30fc\\u30b8\\u3055\\u305b\\u308b\\u5916\\u898b\\u306e\\u8077\\u696d\\u3060\\n\\u30ab\\u30bf\\u30ea\\u30ca\\u30c3\\u30af\\u30eb\\u3068\\u306f\\u8a00\\u3046\\u306a\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u72c2\\u738b\\u306e\\u6c17\\u7d1b\\u308c\\u300d\\n\\u5486\\u54ee\\u30fb\\u52a0\\u8b77\\u30fb\\u546a\\u8a5b\\u306e3\\u3064\\u304b\\u3089\\u30e9\\u30f3\\u30c0\\u30e0\\u306b\\u767a\\u52d5\\u3059\\u308b\\u30b9\\u30ad\\u30eb\\u3060\\u3002","color":"reset"}]'],title:"職業説明文(暗月の剣)",author:"Onion Knights"}
