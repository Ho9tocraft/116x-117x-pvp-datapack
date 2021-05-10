#イニシャライザ(傭兵)
#head
execute as @s[scores={ship-num=3}] at @s run replaceitem entity @s armor.head iron_helmet{display:{Name:'{"text":"戦士のヘルメット","color":"white","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Warrior,Enchantments:[{id:"minecraft:protection",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:6,Operation:0,UUID:[I;-509533618,1962297950,-1877846492,1382528048],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;1898650806,1558462985,-2000927587,1833927999],Slot:"head"}]} 1
#chest
execute as @s[scores={ship-num=3}] at @s run replaceitem entity @s armor.chest iron_chestplate{display:{Name:'{"text":"戦士のチェストプレート","color":"white","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Warrior,Enchantments:[{id:"minecraft:protection",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:24,Operation:0,UUID:[I;-1262342910,-287030297,-1295264293,-167004503],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;842253948,774130568,-1693180167,284698703],Slot:"chest"}]} 1
#legs
execute as @s[scores={ship-num=3}] at @s run replaceitem entity @s armor.legs iron_leggings{display:{Name:'{"text":"戦士のレギンス","color":"white","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Warrior,Enchantments:[{id:"minecraft:protection",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:18,Operation:0,UUID:[I;-1697738591,-1575466600,-1864155991,-1592540804],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-568354844,1291667461,-1924125941,308142849],Slot:"legs"}]} 1
#feet
execute as @s[scores={ship-num=3}] at @s run replaceitem entity @s armor.feet iron_boots{display:{Name:'{"text":"戦士のブーツ","color":"white","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Warrior,Enchantments:[{id:"minecraft:protection",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:12,Operation:0,UUID:[I;60825536,319768936,-1510511742,-575706760],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;1421875694,2059882167,-1368992054,1023008182],Slot:"feet"}]} 1
#mainhand
execute as @s[scores={ship-num=3}] at @s run replaceitem entity @s hotbar.0 iron_axe{display:{Name:'{"text":"バトルアクス","color":"white","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:Warrior,Enchantments:[{id:"minecraft:sharpness",lvl:8s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.75,Operation:2,UUID:[I;-884846305,2119323340,-1790249334,1916373548],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:11,Operation:0,UUID:[I;1717798563,1303530717,-1828626875,-1066834565],Slot:"mainhand"}]} 1
#estus
execute as @s[scores={ship-num=3}] at @s run replaceitem entity @s hotbar.1 orange_dye{display:{Name:'{"text":"エスト瓶","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"HPを回復","color":"white"}]']},HideFlags:1,citTexture:Estus,Enchantments:[{}]} 14
#ashen estus
execute as @s[scores={ship-num=3}] at @s run replaceitem entity @s hotbar.2 light_blue_dye{display:{Name:'{"text":"エストの灰瓶","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"FPを回復","color":"white"}]']},HideFlags:1,citTexture:Estus,Enchantments:[{}]} 1
#unique skill
execute as @s[scores={ship-num=3}] at @s run replaceitem entity @s hotbar.3 blaze_rod{display:{Name:'{"text":"ウォークライ","color":"red","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"自己強化しつつ近くの敵を怯ませる","color":"yellow"}]','[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"60 seconds","color":"yellow"}]']},HideFlags:1,citTexture:Warcry,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
#focus point
execute as @s[scores={ship-num=3}] at @s run scoreboard players set @s FocusPoint 100
#omake
execute as @s at @s run replaceitem entity @s hotbar.8 written_book{pages:['["",{"text":"HP: ","bold":true},{"text":"100\\n","color":"reset"},{"text":"FP: ","bold":true},{"text":"100\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668: ","bold":true},{"text":"\\u30d0\\u30c8\\u30eb\\u30a2\\u30af\\u30b9\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9: ","bold":true},{"text":"\\u306a\\u3057\\n\\u6700\\u5927\\u30af\\u30e9\\u30b9\\u306e\\u4f53\\u529b\\u3092\\u8a87\\u308b\\u8077\\u696d\\u3060\\u3002\\n\\u30d0\\u30c8\\u30eb\\u30a2\\u30af\\u30b9\\u3092\\u5229\\u7528\\u3057\\u3001\\u300c","color":"reset"},{"text":"\\u30a6\\u30a9\\u30fc\\u30af\\u30e9\\u30a4","color":"red"},{"text":"\\u300d\\u3092\\u4f7f\\u3063\\u3066\\u653b\\u6483\\u529b\\u30d6\\u30fc\\u30b9\\u30c8\\u3057\\u305f\\u5727\\u5012\\u7684\\u653b\\u6483\\u529b\\u306b\\u3088\\u308b\\u8133\\u7b4b\\u6226\\u6cd5\\u3092\\u5f97\\u610f\\u3068\\u3059\\u308b\\u3002","color":"reset"}]'],title:"職業説明文(戦士)",author:ho9tocraft,shipbased:true}
