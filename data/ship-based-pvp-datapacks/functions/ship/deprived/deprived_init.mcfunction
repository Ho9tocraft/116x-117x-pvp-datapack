#イニシャライザ（持たざる者）
#legs
execute as @a[scores={ship-num=8}] at @s run replaceitem entity @s armor.legs leather_leggings{display:{Name:'{"text":"恥部隠し","color":"white","bold":true,"italic":false}'},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.6,Operation:2,UUID:[I;-231948789,-1071627565,-1464515596,1853268346],Slot:"legs"}]} 1
#mainhand(slot 0)
execute as @a[scores={ship-num=8}] at @s run replaceitem entity @s hotbar.0 stone_axe{display:{Name:'{"text":"山賊の斧","color":"gray","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID:[I;-1625924026,1854228830,-1207546323,-1911202311],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.5,Operation:2,UUID:[I;1133861459,628903935,-1572517933,-562836960],Slot:"mainhand"}]} 1
#estus(slot 1)
execute as @a[scores={ship-num=8}] at @s run replaceitem entity @s hotbar.1 orange_dye{display:{Name:'{"text":"エスト瓶","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"HPを回復","color":"white"}]']},HideFlags:1,citTexture:Estus,Enchantments:[{}]} 8
#ashen estus(slot 2)
execute as @a[scores={ship-num=8}] at @s run replaceitem entity @s hotbar.2 light_blue_dye{display:{Name:'{"text":"エストの灰瓶","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow","bold":true,"italic":false}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"FPを回復","color":"white"}]']},HideFlags:1,citTexture:Estus,Enchantments:[{}]} 7
#warcry(Unique skill, slot 3)
execute as @a[scores={ship-num=8}] at @s run replaceitem entity @s hotbar.3 blaze_rod{display:{Name:'{"text":"ウォークライ","color":"red","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"自己強化しつつ近くの敵を怯ませる","color":"yellow"}]','[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"60 seconds","color":"yellow"}]']},HideFlags:1,citTexture:Warcry,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
#focus point
execute as @a[scores={ship-num=8}] at @s run scoreboard players set @s FocusPoint 100
#luck
execute as @a[scores={ship-num=8}] at @s run effect give @s minecraft:luck 1000000 255 true
