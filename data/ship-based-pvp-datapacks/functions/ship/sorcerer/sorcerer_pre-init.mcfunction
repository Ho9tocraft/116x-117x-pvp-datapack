#Ship Pre-Initialization File(職業説明文＆職業データ設定)
clear @s written_book{shipbased:true}
execute as @s at @s run item replace entity @s hotbar.8 with written_book{pages: ['["",{"text":"HP: ","bold":true},{"text":"40\\n","color":"reset"},{"text":"FP: ","bold":true},{"text":"300\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668: ","bold":true},{"text":"\\u30c4\\u30f4\\u30a1\\u30a4\\u30d8\\u30f3\\u30c0\\u30fc\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9: ","bold":true},{"text":"\\u5929\\u661f\\u306e\\u9b54\\u6756\\n\\u9b54\\u8853\\u3092\\u6271\\u3046\\u8077\\u696d\\u3060\\n\\u305d\\u306e\\u6027\\u8cea\\u4e0a \\u751f\\u5b58\\u80fd\\u529b\\u306f\\u4f4e\\u3044\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u81f4\\u6b7b\\u306e\\u767d\\u9727\\u300d\\n\\u4ed8\\u8fd1\\u306b\\u7d99\\u7d9a\\u3057\\u3066\\u30c0\\u30e1\\u30fc\\u30b8\\u3092\\u4e0e\\u3048\\u308b\\u9727\\u3092\\u5c55\\u958b\\u3059\\u308b\\n\\u6253\\u305f\\u308c\\u5f31\\u3044\\u70ba \\u4ef2\\u9593\\u3068\\u306e\\u9023\\u643a\\u304c\\u5927\\u4e8b\\u3060","color":"reset"}]'], title: "職業説明文(魔術師)", author: ho9tocraft, shipbased: true}
execute as @s at @s run scoreboard players set @s ship-num 5
playsound entity.player.levelup player @s ~ ~ ~ 100 1.0 0.5
tellraw @s ["",{"text":"\u8077\u696d\u3092\u300c"},{"text":"\u9b54\u8853\u5e2b","color":"green"},{"text":"\u300d\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\uff01"}]
