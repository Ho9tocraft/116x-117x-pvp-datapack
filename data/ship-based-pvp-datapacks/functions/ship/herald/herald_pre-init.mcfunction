#Ship Pre-Initialization File(職業説明文＆職業データ設定)
clear @s written_book{shipbased:true}
execute as @s at @s run replaceitem entity @s hotbar.8 written_book{pages:['["",{"text":"HP:","bold":true},{"text":" 60\\n","color":"reset"},{"text":"FP:","bold":true},{"text":" 200\\n","color":"reset"},{"text":"\\u30e1\\u30a4\\u30f3\\u6b66\\u5668:","bold":true},{"text":" \\u30c8\\u30e9\\u30a4\\u30c7\\u30f3\\u30c8\\n","color":"reset"},{"text":"\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9:","bold":true},{"text":" \\u4e0d\\u6b7b\\u306e\\u30c8\\u30fc\\u30c6\\u30e0\\n\\u4e0d\\u6b7b\\u306e\\u30c8\\u30fc\\u30c6\\u30e0\\u3092\\u5229\\u7528\\u3057\\u3066\\u306e\\u6226\\u95d8\\u3092\\u5f97\\u610f\\u3068\\u3059\\u308b\\u8077\\u696d\\u3060\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u60dc\\u5225\\u306e\\u6d99\\u300d\\n\\u4e0d\\u6b7b\\u306e\\u30c8\\u30fc\\u30c6\\u30e0\\u3092\\u518d\\u5ea6\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9\\u306b\\u51fa\\u73fe\\u3055\\u305b\\u308b\\n\\u305d\\u306e\\u6027\\u8cea\\u4e0a \\u8a66\\u5408\\u958b\\u59cb\\u76f4\\u5f8c\\u306b\\u306f\\u4f7f\\u3048\\u306a\\u3044","color":"reset"}]'],title:"職業説明文(伝令)",author:ho9tocraft,shipbased:true}
execute as @s at @s run scoreboard players set @s ship-num 4
playsound entity.player.levelup player @s ~ ~ ~ 100 1.0 0.5
tellraw @s ["",{"text":"\u8077\u696d\u3092\u300c"},{"text":"\u4f1d\u4ee4","color":"green"},{"text":"\u300d\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\uff01"}]


