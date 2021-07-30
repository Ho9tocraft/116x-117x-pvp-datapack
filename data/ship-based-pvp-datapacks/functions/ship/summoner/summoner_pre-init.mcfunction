#召喚士の職業説明文
clear @s written_book{shipbased:true}
execute as @s at @s run item replace entity @s hotbar.8 with written_book{pages:['{"text":"HP: 80\\nFP: 300\\n\\u30e1\\u30a4\\u30f3\\u6b66\\u5668: \\u5929\\u661f\\u306e\\u9b54\\u6756\\n\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9: \\u306a\\u3057\\n\\u30e2\\u30f3\\u30b9\\u30bf\\u30fc\\u3092\\u53ec\\u559a\\u3057\\u3066\\u6226\\u3046\\u8077\\u696d\\u3060\\n\\u307e\\u305f\\u3001\\u624b\\u306b\\u6301\\u3064\\u9b54\\u6756\\u306f\\u9695\\u77f3\\u3092\\u843d\\u3068\\u3059\\u529b\\u3092\\u79d8\\u3081\\u3066\\u3044\\u308b\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u5f93\\u8005\\u53ec\\u559a\\u300d\\n\\u5f93\\u8005\\u3092\\u53ec\\u559a\\u3059\\u308b\\n\\u305f\\u3060\\u3057\\u3001\\u9695\\u77f3\\u306e\\u7206\\u767a\\u306f\\u56de\\u907f\\u3067\\u304d\\u306a\\u3044"}'],title:"職業説明文(召喚士)",author:"ho9tocraft",shipbased:true}
execute as @s at @s run scoreboard players set @s ship-num 13
playsound entity.player.levelup player @s ~ ~ ~ 100 1.0 0.5
tellraw @s ["",{"text":"\u8077\u696d\u3092\u300c"},{"text":"\u53ec\u559a\u58eb","color":"green"},{"text":"\u300d\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\uff01"}]

