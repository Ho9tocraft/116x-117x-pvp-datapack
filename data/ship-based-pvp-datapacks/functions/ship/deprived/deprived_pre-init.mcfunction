#Ship Pre-Initialization File(職業説明文＆職業データ設定)
clear @s written_book{shipbased:true}
execute as @s at @s run item replace entity @s hotbar.8 with written_book{pages:['["",{"text":"HP;","bold":true},{"text":" 40\\n","color":"reset"},{"text":"FP:","bold":true},{"text":" 100\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668:","bold":true},{"text":" \\u5c71\\u8cca\\u306e\\u65a7\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9:","bold":true},{"text":" \\u306a\\u3057\\n\\u8a9e\\u308b\\u3079\\u304d\\u4e8b\\u3082\\u306a\\u3044\\u3001\\u305f\\u3060\\u5f31\\u3044\\u3060\\u3051\\u306e\\u8077\\u696d\\u3060\\u3002\\n\\u3057\\u304b\\u3057\\u3001\\u904b\\u306b\\u3088\\u3063\\u3066\\u306f\\u72b6\\u6cc1\\u3092\\u8986\\u3059\\u3053\\u3068\\u304c\\u51fa\\u6765\\u308b\\u3060\\u308d\\u3046\\u2026","color":"reset"}]'],title:"職業説明文（持たざる者）",author:ho9tocraft,shipbased:true}
execute as @s at @s run scoreboard players set @s ship-num 8
playsound entity.player.levelup player @s ~ ~ ~ 100 1.0 0.5
tellraw @s ["",{"text":"\u8077\u696d\u3092\u300c"},{"text":"\u6301\u305f\u3056\u308b\u8005","color":"green"},{"text":"\u300d\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\uff01"}]

