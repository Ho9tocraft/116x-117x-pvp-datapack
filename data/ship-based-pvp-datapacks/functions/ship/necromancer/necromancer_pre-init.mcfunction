#死霊術師プレイニシャライザ
clear @s written_book{shipbased:true}
execute as @s at @s run item replace entity @s hotbar.8 with written_book{pages:['{"text":"HP: 40\\nFP: 300\\n\\u30e1\\u30a4\\u30f3\\u6b66\\u5668: \\u30d6\\u30eb\\u30fc\\u30d5\\u30ec\\u30a4\\u30e0\\n\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9: \\u306a\\u3057\\n\\u51a5\\u754c\\u3088\\u308a\\u6b7b\\u970a\\u3092\\u547c\\u3073\\u51fa\\u3057\\u3001\\u6575\\u3092\\u306a\\u3076\\u308a\\u6bba\\u3059\\u8077\\u696d\\u3060\\n\\u6b7b\\u970a\\u306b\\u611b\\u3055\\u308c\\u308b\\u304c\\u6545\\u306b\\u6253\\u305f\\u308c\\u5f31\\u3044\\u304c\\u3001\\u9023\\u643a\\u3092\\u3068\\u308c\\u3055\\u3048\\u3059\\u308c\\u3070\\u3069\\u306e\\u30a8\\u30ea\\u30a2\\u3067\\u3082\\u52dd\\u6a5f\\u306f\\u3042\\u308b\\u3060\\u308d\\u3046"}','{"text":"\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u5f93\\u8005\\u53ec\\u559a\\u300d\\n\\u6b7b\\u970a\\u3092\\u547c\\u3073\\u51fa\\u3059\\n\\u53ec\\u559a\\u58eb\\u3068\\u540d\\u524d\\u3053\\u305d\\u540c\\u3058\\u3060\\u304c\\n\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u3068\\u3057\\u3066\\u306e\\u5404\\u7a2e\\u6027\\u80fd\\u306f\\u6b64\\u65b9\\u304c\\u4e0a\\u3067\\u3042\\u308b\\n\\u3057\\u304b\\u3057\\u653b\\u6483\\u529b\\u306b\\u306f\\u671f\\u5f85\\u3057\\u306a\\u3044\\u65b9\\u304c\\u826f\\u3044\\u3060\\u308d\\u3046\\n "}'],title:"職業説明文(死霊術師)",author:"異邦の死霊術師",shipbased:true}
execute as @s at @s run scoreboard players set @s ship-num 17
playsound entity.player.levelup player @s ~ ~ ~ 100 1.0 0.5
tellraw @s ["",{"text":"\u8077\u696d\u3092\u300c"},{"text":"\u6b7b\u970a\u8853\u5e2b","color":"green"},{"text":"\u300d\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\uff01"}]
