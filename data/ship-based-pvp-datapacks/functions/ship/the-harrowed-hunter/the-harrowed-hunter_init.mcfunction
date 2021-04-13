#イニシャライザ（シモン）
#head
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s armor.head chainmail_helmet{display:{Name:'{"text":"やつしの頭巾","color":"gray","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Hunter,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:respiration",lvl:3s},{id:"minecraft:aqua_affinity",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-1768818246,1939751078,-1981120367,68398524],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-1683877050,-1826995719,-1156399038,-920469331],Slot:"head"}]} 1
#chest
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s armor.chest chainmail_chestplate{display:{Name:'{"text":"やつしの装束","color":"gray","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Hunter,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:9,Operation:0,UUID:[I;-1873457716,-1844363137,-1307596094,-1785877377],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;1237465427,-885176773,-1397379125,-675120398],Slot:"chest"}]} 1
#legs
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s armor.legs chainmail_leggings{display:{Name:'{"text":"やつしのズボン","color":"gray","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Hunter,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7,Operation:0,UUID:[I;1101234438,1740654748,-1844609830,-373069003],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;1430781390,-167950468,-1165672999,-998444316],Slot:"legs"}]} 1
#feet
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s armor.feet chainmail_boots{display:{Name:'{"text":"やつしのブーツ","color":"gray","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Hunter,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:feather_falling",lvl:4s},{id:"minecraft:blast_protection",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;629222954,-988787516,-1451053590,-511792411],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;1411267947,-1729869958,-1822103278,153644016],Slot:"legs"}]} 1
#mainhand(hotbar slot 0)
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s hotbar.0 iron_sword{display:{Name:'{"text":"シモンの弓剣（剣）","color":"aqua","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Hunter,Enchantments:[{id:"minecraft:sharpness",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1907932462,1757102680,-2027565890,-1627505863],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.05,Operation:2,UUID:[I;502078018,-487961647,-2041556729,1061597574],Slot:"mainhand"}]} 1
#offhand
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s weapon.offhand bow{display:{Name:'{"text":"シモンの弓剣（弓）","color":"aqua","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Hunter,Enchantments:[{id:"minecraft:power",lvl:6s},{id:"minecraft:punch",lvl:3s},{id:"minecraft:flame",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.follow_range",Name:"generic.follow_range",Amount:64,Operation:0,UUID:[I;-971592502,-1308668674,-1674252794,663838895],Slot:"mainhand"}]} 1
#estus(hotbar slot 1)
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s hotbar.1 orange_dye{display:{Name:'{"text":"エスト瓶","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"HPを回復","color":"white"}]']},HideFlags:1,citTexture:Estus,Enchantments:[{}]} 15
#skill 1(hotbar slot 2)
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s hotbar.2 light_blue_dye{display:{Name:'{"text":"古い狩人の遺骨","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"一定時間の間、移動速度・跳躍速度・再生速度UP","color":"yellow"}]','[{"text": "CT: ","color": "gray","bold": true,"italic": false},{"text": "60 seconds","color": "yellow"}]']},HideFlags:5,citTexture:Hunter,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
#skill 3(hotbar slot 3)
execute as @a[scores={ship-num=7}] at @s run replaceitem entity @s hotbar.3 magenta_dye{display:{Name:'{"text":"矢補充","color":"dark_purple","bold":true,"italic":false}'},Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"矢弾16発補充＆自身に吐き気＆即時ダメージ付与","color":"yellow"}]','[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"40 seconds","color":"yellow"}]'],HideFlags:1,citTexture:Hunter,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
#FP
execute as @a[scores={ship-num=7}] at @s run scoreboard players set @s FocusPoint 250

