#イニシャライザ（バニーダンサー）
#region ここに装備一覧
#head
execute as @s[scores={ship-num=14}] at @s run item replace entity @s armor.head with iron_helmet{display:{Name:'{"text":"踊り子の頭冠","color":"blue","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:dancer,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I;1587323786,-91140259,-1773390975,-1392296494],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-292321203,1907639914,-1197804957,-782060878],Slot:"head"}]} 1
#chest
execute as @s[scores={ship-num=14}] at @s run item replace entity @s armor.chest with iron_chestplate{display:{Name:'{"text":"踊り子の胴衣","color":"blue","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:dancer,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I;434678033,1077232761,-1327982037,-1847226618],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;165546691,-944486056,-1851328346,-2047203129],Slot:"chest"}]} 1
#legs
execute as @s[scores={ship-num=14}] at @s run item replace entity @s armor.legs with iron_leggings{display:{Name:'{"text":"踊り子の脚衣","color":"blue","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:dancer,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I;1764076344,-190689804,-1859756598,-914629916],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;1528284488,1740787248,-1271985997,34638125],Slot:"legs"}]} 1
#feet
execute as @s[scores={ship-num=14}] at @s run item replace entity @s armor.feet with iron_boots{display:{Name:'{"text":"踊り子の靴","color":"blue","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:dancer,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:blast_protection",lvl:3s},{id:"minecraft:soul_speed",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I;-269643027,-1689301115,-1537791849,1110428433],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;1369140624,-472167803,-1955215324,-1110119219],Slot:"feet"}]} 1
#mainhand(hotbar.0)
execute as @s[scores={ship-num=14}] at @s run item replace entity @s hotbar.0 with golden_sword{display:{Name:'{"text":"ゴールド ロングソード","color":"gold","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,citTexture:dancer,Enchantments:[{id:"minecraft:sharpness",lvl:6s},{id:"minecraft:smite",lvl:6s},{id:"minecraft:bane_of_arthropods",lvl:6s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:14,Operation:0,UUID:[I;1157278522,-427342821,-1758718968,962212933],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:1.2,Operation:2,UUID:[I;-1215893954,-1338750042,-1446527512,36551845],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:3,Operation:0,UUID:[I;1663392291,1853770177,-1103620426,47079515],Slot:"mainhand"}]} 1
#セイクリッドサークル(hotbar.1)
execute as @s[scores={ship-num=14}] at @s run item replace entity @s hotbar.1 with cyan_dye{display:{Name:'{"text":"セイクリッド サークル","color":"dark_aqua","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"範囲内の味方のHPを回復する","color":"yellow"}]','[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"20 secs","color":"yellow"}]']},citTexture:sacred_circle} 1
#コンデンスマインド(hotbar.2)
execute as @s[scores={ship-num=14}] at @s run item replace entity @s hotbar.2 with light_blue_dye{display:{Name:'{"text":"コンデンスマインド","color":"aqua","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"自身のFPをじわじわ回復する","color":"yellow"}]','[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"15 secs","color":"yellow"}]']},citTexture:condense_mind} 1
#ザ・レゾナンスエイジ(hotbar.3)
execute as @s[scores={ship-num=14}] at @s run item replace entity @s hotbar.3 with red_dye{display:{Name:'{"text":"ザ・レゾナンスエイジ","color":"aqua","bold":true,"italic":false}',Lore:['[{"text":"使用キー: ","color":"gray","bold":true,"italic":false},{"keybind":"key.sneak","color":"yellow"}]','[{"text":"効果: ","color":"gray","bold":true,"italic":false},{"text":"範囲内の味方のあらゆるデバフを解除し、攻撃力上昇を付与","color":"yellow"}]','[{"text":"CT: ","color":"gray","bold":true,"italic":false},{"text":"30 secs","color":"yellow"}]']},citTexture:dancer} 1
#FocusPoint
execute as @s[scores={ship-num=14}] at @s run scoreboard players set @s FocusPoint 150
#endregion
execute as @s[scores={ship-num=14}] at @s run item replace entity @s hotbar.8 with written_book{pages:['["",{"text":"HP:","bold":true},{"text":" 60\\n","color":"reset"},{"text":"FP:","bold":true},{"text":" 150\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668:","bold":true},{"text":" \\u30b4\\u30fc\\u30eb\\u30c9 \\u30ed\\u30f3\\u30b0\\u30bd\\u30fc\\u30c9\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9:","bold":true},{"text":" \\u306a\\u3057\\n\\u524d\\u7dda\\u3067\\u8e0a\\u308a\\u3001\\u5473\\u65b9\\u3092\\u652f\\u63f4\\u3059\\u308b\\u8077\\u696d\\u3060\\n\\u6642\\u3092\\u6b62\\u3081\\u308b\\u653b\\u6483\\u3092\\u9632\\u3050\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u3060\\u308d\\u3046","color":"reset"}]','{"text":"\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u30b6\\u30fb\\u30ec\\u30be\\u30ca\\u30f3\\u30b9\\u30a8\\u30a4\\u30b8\\u300d\\n\\u7bc4\\u56f2\\u5185\\u306e\\u5473\\u65b9\\u306e\\u3042\\u3089\\u3086\\u308b\\u30c7\\u30d0\\u30d5\\u3092\\u89e3\\u9664\\u3057 \\u307e\\u305f\\u653b\\u6483\\u529b\\u4e0a\\u6607\\u3092\\u4ed8\\u4e0e\\u3059\\u308b\\n\\u5f31\\u3044\\u52c7\\u6c17\\u3053\\u305d\\u304c \\u5f37\\u3044\\u529b\\u3068\\u306a\\u308b"}'],title:"職業説明文(バニーダンサー)",author:ho9tocraft,shipbased:true}

