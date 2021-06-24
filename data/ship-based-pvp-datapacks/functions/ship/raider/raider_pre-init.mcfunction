#職業説明文など（ピリジャー）
clear @s written_book{shipbased:true}
execute as @s at @s run item replace entity @s hotbar.8 with written_book{pages: ['["",{"text":"HP: 60\\nFP: 250\\n\\u30e1\\u30a4\\u30f3\\u6b66\\u5668: \\u5974\\u96b7\\u306e\\u624b\\u65a7\\n\\u30aa\\u30d5\\u30cf\\u30f3\\u30c9: \\u9023\\u5c04\\u30af\\u30ed\\u30b9\\u30dc\\u30a6\\nMinecraft 1.14\\u306b\\u3066\\u767b\\u5834\\u3057\\u305f\\u30d4\\u30ea\\u30b8\\u30e3\\u30fc\\u3092\\u30a4\\u30e1\\u30fc\\u30b8\\u3057\\u305f\\u8077\\u696d\\u3060\\u3002\\n"},{"text":"If you are going to be a pillager, then surely someone other than you will try to kill you.","obfuscated":true},{"text":"\\n ","color":"reset"}]', '{"text":"\\u30e6\\u30cb\\u30fc\\u30af\\u30b9\\u30ad\\u30eb\\u306f\\u300c\\u5730\\u3088\\u308a\\u51fa\\u305a\\u308b\\u7259\\u300d\\n\\u30d5\\u30a1\\u30f3\\u30b0\\u3092\\u53ec\\u559a\\u3059\\u308b\\n "}'], title: "職業説明文(略奪者)", author: "The Horrow"}
execute as @s at @s run scoreboard players set @s ship-num 9
playsound entity.player.levelup player @s ~ ~ ~ 100 1.0 0.5
tellraw @s ["",{"text":"\u8077\u696d\u3092\u300c"},{"text":"\u7565\u596a\u8005","color":"green"},{"text":"\u300d\u306b\u8a2d\u5b9a\u3057\u307e\u3057\u305f\uff01"}]



