#イニシャライザ（持たざる者）
#legs
execute as @s[scores={ship-num=8}] at @s run item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"恥部隠し","color":"white","bold":true,"italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.6d,Operation:2,UUID:[I;1064693971,-101563850,-1913646127,-1640179677],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:10,Operation:0,UUID:[I;-490422022,-1427682784,-1663751700,2123920428],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:12,Operation:0,UUID:[I;566865783,-453753062,-1289186679,1981079684],Slot:"legs"}]} 1
#mainhand(slot 0)
execute as @s[scores={ship-num=8}] at @s run item replace entity @s hotbar.0 with stone_axe{display:{Name:'{"text":"山賊の斧","color":"gray","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:15,Operation:0,UUID:[I; -1625924026,1854228830,-1207546323,-1911202311],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.55d,Operation:2,UUID:[I; 1133861459,628903935,-1572517933,-562836960],Slot:"mainhand"}]} 1
#estus(slot 1)
execute as @s[scores={ship-num=8}] at @s run item replace entity @s hotbar.1 with orange_dye{display:{Name:'{"text":"エスト瓶","bold":true,"italic":false}',Lore:['[{"text":"使用キー:","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果:","color":"gray","bold":true,"italic":false},{"text":"HPを回復","color":"white"}]']},HideFlags:1,citTexture:Estus,Enchantments:[{}]} 8
#ashen estus(slot 2)
execute as @s[scores={ship-num=8}] at @s run item replace entity @s hotbar.2 with light_blue_dye{display:{Name:'{"text":"エストの灰瓶","bold":true,"italic":false}',Lore:['[{"text":"使用キー:","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果:","color":"gray","bold":true,"italic":false},{"text":"FPを回復","color":"white"}]']},HideFlags:1,citTexture:Estus,Enchantments:[{}]} 7
#warcry(Unique skill,slot 3)
execute as @s[scores={ship-num=8}] at @s run item replace entity @s hotbar.3 with blaze_rod{display:{Name:'{"text":"ウォークライ","color":"red","bold":true,"italic":false}',Lore:['[{"text":"使用キー:","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果:","color":"gray","bold":true,"italic":false},{"text":"自己強化しつつ近くの敵を怯ませる","color":"yellow"}]','[{"text":"CT:","color":"gray","bold":true,"italic":false},{"text":"60 seconds","color":"yellow"}]']},HideFlags:1,citTexture:Warcry,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
#focus point
execute as @s[scores={ship-num=8}] at @s run scoreboard players set @s FocusPoint 100
#luck
execute as @s[scores={ship-num=8}] at @s run effect give @s minecraft:luck 1000000 255 true
#Token Give(Iron 32, Gold 16, Diamond 4)
execute as @s[scores={ship-num=8}] at @s run give @s iron_ingot{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 32
execute as @s[scores={ship-num=8}] at @s run give @s gold_ingot{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 16
execute as @s[scores={ship-num=8}] at @s run give @s diamond{display:{Name:'{"text":"Diamond Token","color":"blue","bold":true,"italic":false}'},citTexture:Token} 4
#omake
execute as @s[scores={ship-num=8}] at @s run item replace entity @s hotbar.8 with written_book{pages:['["",{"text":"HP;","bold":true},{"text":" 40\\n","color":"reset"},{"text":"FP:","bold":true},{"text":" 100\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668:","bold":true},{"text":" \\u5c71\\u8cca\\u306e\\u65a7\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9:","bold":true},{"text":" \\u306a\\u3057\\n\\u8a9e\\u308b\\u3079\\u304d\\u4e8b\\u3082\\u306a\\u3044\\u3001\\u305f\\u3060\\u5f31\\u3044\\u3060\\u3051\\u306e\\u8077\\u696d\\u3060\\u3002\\n\\u3057\\u304b\\u3057\\u3001\\u904b\\u306b\\u3088\\u3063\\u3066\\u306f\\u72b6\\u6cc1\\u3092\\u8986\\u3059\\u3053\\u3068\\u304c\\u51fa\\u6765\\u308b\\u3060\\u308d\\u3046\\u2026","color":"reset"}]'],title:"職業説明文（持たざる者）",author:ho9tocraft,shipbased:true}
