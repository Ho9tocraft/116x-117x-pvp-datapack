#イニシャライザ（魔術師）
#head
execute as @s[scores={ship-num=5}] at @s run item replace entity @s armor.head with leather_helmet{display: {Name: '{"text":"魔術師の頭巾","color":"blue","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, Enchantments: [{id: "minecraft:protection", lvl: 2s}, {id: "minecraft:fire_protection", lvl: 4s}, {id: "minecraft:projectile_protection", lvl: 4s}, {id: "minecraft:binding_curse", lvl: 1s}], citTexture: Sorcerer} 1
#chest
execute as @s[scores={ship-num=5}] at @s run item replace entity @s armor.chest with leather_chestplate{display: {Name: '{"text":"魔術師のローブ","color":"blue","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, Enchantments: [{id: "minecraft:protection", lvl: 2s}, {id: "minecraft:fire_protection", lvl: 4s}, {id: "minecraft:projectile_protection", lvl: 4s}, {id: "minecraft:binding_curse", lvl: 1s}], citTexture: Sorcerer} 1
#legs
execute as @s[scores={ship-num=5}] at @s run item replace entity @s armor.legs with leather_leggings{display: {Name: '{"text":"魔術師のズボン","color":"blue","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, Enchantments: [{id: "minecraft:protection", lvl: 2s}, {id: "minecraft:fire_protection", lvl: 4s}, {id: "minecraft:projectile_protection", lvl: 4s}, {id: "minecraft:binding_curse", lvl: 1s}], citTexture: Sorcerer} 1
#feet
execute as @s[scores={ship-num=5}] at @s run item replace entity @s armor.feet with leather_boots{display: {Name: '{"text":"魔術師のブーツ","color":"blue","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, Enchantments: [{id: "minecraft:protection", lvl: 2s}, {id: "minecraft:fire_protection", lvl: 4s}, {id: "minecraft:projectile_protection", lvl: 4s}, {id: "minecraft:binding_curse", lvl: 1s}], citTexture: Sorcerer} 1
#mainhand(Slot 0)
execute as @s[scores={ship-num=5}] at @s run item replace entity @s hotbar.0 with diamond_sword{display: {Name: '{"text":"愚者のツヴァイヘンダー","color":"aqua","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -0.1d, Operation: 2, UUID: [I; 1659779087, -1154530541, -1393282051, -1526558317], Slot: "mainhand"}, {AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 0.15d, Operation: 2, UUID: [I; 1969383553, -1285403531, -2089553128, -1613924532], Slot: "mainhand"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 0.75d, Operation: 2, UUID: [I; -123581086, -651997992, -1335405692, -1304978400], Slot: "mainhand"}, {AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 29, Operation: 0, UUID: [I; -1290713860, 710492455, -1329623742, -1918200318], Slot: "mainhand"}], citTexture: Zweihander} 1
#offhand
execute as @s[scores={ship-num=5}] at @s run item replace entity @s weapon.offhand with golden_hoe{display: {Name: '{"text":"天星の魔杖","color":"gold","bold":true,"italic":false}'}, HideFlags: 5, Unbreakable: 1b, citTexture: Sorcerer, Enchantments: [{id: "minecraft:knockback", lvl: 4s}], AttributeModifiers: [{AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -0.25d, Operation: 2, UUID: [I; 2069968639, 2137280423, -1563119622, -630020902], Slot: "mainhand"}, {AttributeName: "generic.knockback_resistance", Name: "generic.knockback_resistance", Amount: 0.75d, Operation: 2, UUID: [I; 597996700, -1042659515, -1235980831, -577630540], Slot: "mainhand"}, {AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 5, Operation: 0, UUID: [I; 140125495, -140621227, -1283705150, -842719009], Slot: "mainhand"}]} 1
#estus(Slot 1)
execute as @s[scores={ship-num=5}] at @s run item replace entity @s hotbar.1 with orange_dye{display: {Name: '{"text":"エスト瓶","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"HPを回復","color":"white"}]']}, HideFlags: 1, citTexture: Estus, Enchantments: [{}]} 3
#ashen estus(Slot 2)
execute as @s[scores={ship-num=5}] at @s run item replace entity @s hotbar.2 with light_blue_dye{display: {Name: '{"text":"エストの灰瓶","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"FPを回復","color":"white"}]']}, HideFlags: 1, citTexture: Estus, Enchantments: [{}]} 12
#Unique Skill(Slot 3)
execute as @s[scores={ship-num=5}] at @s run item replace entity @s hotbar.3 with gold_ingot{display: {Name: '{"text":"致死の白霧","color":"gray","bold":true,"italic":false}', Lore: ['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]', '[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"付近にダメージのある靄を展開する","color":"gold"}]', '[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"40 seconds","color":"yellow"}]']}, HideFlags: 5, citTexture: Sorcerer, Enchantments: [{id: "minecraft:unbreaking", lvl: 1s}]} 1
#FP
execute as @s[scores={ship-num=5}] at @s run scoreboard players set @s FocusPoint 300
#omake
execute as @s[scores={ship-num=5}] at @s run item replace entity @s hotbar.8 with written_book{pages: ['["",{"text":"HP: ","bold":true},{"text":"40\\n","color":"reset"},{"text":"FP: ","bold":true},{"text":"300\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668: ","bold":true},{"text":"\\u30c4\\u30f4\\u30a1\\u30a4\\u30d8\\u30f3\\u30c0\\u30fc\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9: ","bold":true},{"text":"\\u5929\\u661f\\u306e\\u9b54\\u6756\\n\\u9b54\\u8853\\u3092\\u6271\\u3046\\u8077\\u696d\\u3060\\n\\u305d\\u306e\\u6027\\u8cea\\u4e0a \\u751f\\u5b58\\u80fd\\u529b\\u306f\\u4f4e\\u3044\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u81f4\\u6b7b\\u306e\\u767d\\u9727\\u300d\\n\\u4ed8\\u8fd1\\u306b\\u7d99\\u7d9a\\u3057\\u3066\\u30c0\\u30e1\\u30fc\\u30b8\\u3092\\u4e0e\\u3048\\u308b\\u9727\\u3092\\u5c55\\u958b\\u3059\\u308b\\n\\u6253\\u305f\\u308c\\u5f31\\u3044\\u70ba \\u4ef2\\u9593\\u3068\\u306e\\u9023\\u643a\\u304c\\u5927\\u4e8b\\u3060","color":"reset"}]'], title: "職業説明文(魔術師)", author: ho9tocraft, shipbased: true}
