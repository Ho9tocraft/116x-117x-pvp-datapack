#
clear @s written_book{shipbased:true}
execute as @s at @s run item replace entity @s hotbar.8 with written_book{pages:['{"text":"HP: 80\\nFP: 200\\n\\u30e1\\u30a4\\u30f3\\u6b66\\u5668: \\u9d09\\u4eba\\u306e\\u5927\\u938c\\n\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9: \\u30ed\\u30b1\\u30c3\\u30c8\\u82b1\\u706b\\n\\u30a8\\u30ea\\u30c8\\u30e9\\u3067\\u7a7a\\u3092\\u98db\\u3076\\u8077\\u696d\\u3060\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u30a2\\u30b5\\u30eb\\u30c8\\u30ad\\u30e3\\u30ce\\u30f3\\u300d\\nDoT\\u4ed8\\u304d\\u306e\\u7832\\u6483\\u3092\\u653e\\u3064\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u3002\\u3053\\u306e\\u7832\\u6483\\u306e\\u5c04\\u7a0b\\u306f\\u975e\\u5e38\\u306b\\u9577\\u304f\\u3001\\u305d\\u3057\\u3066\\u30c1\\u30e3\\u30fc\\u30b8\\u6642\\u9593\\u304c\\u9577\\u3044"}'],title:"職業説明文(鴉人)",author:"A Hollow",shipbased:true}
execute as @s at @s run scoreboard players set @s ship-num 16
playsound entity.player.levelup player @s ~ ~ ~ 100 1.0 0.5
tellraw @s ["",{"text":"\u8077\u696d\u3092\u300c"},{"text":"\u9d09\u4eba","color":"green"},{"text":"\u300d\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\uff01"}]

