#レディチェック用関数です。

scoreboard players set @a readycheck 0
scoreboard players enable @a readycheck
tellraw @a ["",{"selector":"@s"},{"text":"\u304c\u30ec\u30c7\u30a3\u30c1\u30a7\u30c3\u30af\u3092\u59cb\u3081\u307e\u3057\u305f\u300230\u79d2\u5f8c\u306b\u7d50\u679c\u304c\u51fa\u307e\u3059\u3002\n\u53c2\u52a0\u53ef\u80fd\u304b\u3069\u3046\u304b\u9078\u629e\u3057\u3066\u4e0b\u3055\u3044\u3002\n"},{"text":"\u25cb","clickEvent":{"action":"suggest_command","value":"/trigger readycheck set 1"},"underlined": true,"color": "green"},{"text":" or "},{"text":"×","clickEvent":{"action":"suggest_command","value":"/trigger readycheck set 0"},"underlined": true,"color": "green"}]

schedule function ship-based-pvp-datapacks:ready_check_result 30s
