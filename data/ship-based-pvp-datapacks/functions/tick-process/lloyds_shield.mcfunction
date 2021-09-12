#ロイドの盾の指輪
#効果: HP最大時、耐性Ⅱ付与(1 sec)
#HP40キャラ（と鴉人）限定で実装
execute if score #Helper CombatMode matches 2 as @a[scores={ship-num=5,health-spectate=40}] at @s run effect give @s resistance 1 1 false
execute if score #Helper CombatMode matches 2 as @a[scores={ship-num=7..8,health-spectate=40}] at @s run effect give @s resistance 1 1 false
execute if score #Helper CombatMode matches 2 as @a[scores={ship-num=16,health-spectate=59..60}] at @s run effect give @s resistance 1 1 false