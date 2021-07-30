#レディチェックの結果です。
data modify storage ho9tocraft:readycheck readyCheckTrue set value 0
data modify storage ho9tocraft:readycheck readyCheckFalse set value 0
execute store result storage ho9tocraft:readycheck readyCheckTrue int 1 run execute if entity @a[scores={readycheck=1..}]
execute store result storage ho9tocraft:readycheck readyCheckFalse int 1 run execute if entity @a[scores={readycheck=..0}]
tellraw @a ["",{"text":"\u30ec\u30c7\u30a3\u30c1\u30a7\u30c3\u30af\u304c\u7d42\u4e86\u3057\u307e\u3057\u305f\u3002\u25cb\uff1a"},{"nbt": "readyCheckTrue", "storage": "ho9tocraft:readycheck","color":"red"},{"text":" ×\uff1a"},{"nbt": "readyCheckFalse", "storage": "ho9tocraft:readycheck","color":"blue"}]
