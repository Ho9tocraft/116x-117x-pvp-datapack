#FEW WORLD用のTokenスポーンデータになります。
#Minecraft version 1.17: 大規模修正。
#・座標を大幅修正
#・Minecraft 1.17への対応化
#・秒数の変更（鉄:10→8→6、金:15→12→10、ダイヤ:20→15→12）

execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-iron matches 10 run summon item 390 97 13 {Item:{id:"minecraft:iron_ingot",tag:{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-iron matches 10 run summon item 297 97 -94 {Item:{id:"minecraft:iron_ingot",tag:{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-gold matches 15 run summon item 390 97 13 {Item:{id:"minecraft:gold_ingot",tag:{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-gold matches 15 run summon item 297 97 -94 {Item:{id:"minecraft:gold_ingot",tag:{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 0 if score #Helper token-sp-diamond matches 20 run summon item 338 70 -38 {Item:{id:"minecraft:diamond",tag:{display:{Name:'{"text":"Diamond Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}

execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-iron matches 8 run summon item 390 97 13 {Item:{id:"minecraft:iron_ingot",tag:{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-iron matches 8 run summon item 297 97 -94 {Item:{id:"minecraft:iron_ingot",tag:{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-gold matches 12 run summon item 390 97 13 {Item:{id:"minecraft:gold_ingot",tag:{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-gold matches 12 run summon item 297 97 -94 {Item:{id:"minecraft:gold_ingot",tag:{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 1 if score #Helper token-sp-diamond matches 15 run summon item 338 70 -38 {Item:{id:"minecraft:diamond",tag:{display:{Name:'{"text":"Diamond Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}

execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-iron matches 6 run summon item 390 97 13 {Item:{id:"minecraft:iron_ingot",tag:{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-iron matches 6 run summon item 297 97 -94 {Item:{id:"minecraft:iron_ingot",tag:{display:{Name:'{"text":"Iron Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-gold matches 10 run summon item 390 97 13 {Item:{id:"minecraft:gold_ingot",tag:{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-gold matches 10 run summon item 297 97 -94 {Item:{id:"minecraft:gold_ingot",tag:{display:{Name:'{"text":"Gold Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
execute if score #Helper CombatMode matches 2 if score #Helper token-phase matches 2 if score #Helper token-sp-diamond matches 12 run summon item 338 70 -38 {Item:{id:"minecraft:diamond",tag:{display:{Name:'{"text":"Diamond Token","color":"blue","bold":true,"italic":false}'},citTexture:Token},Count:1b}}
