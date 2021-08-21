#ロイドの剣の指輪
#効果: HP最大時に攻撃力バフ付与
#HP60職業（傭兵やDPSの高い職業除く）にのみ実装
execute as @a[scores={ship-num=4,health-spectate=59..60}] at @s run effect give @s strength 4 3 false
execute as @a[scores={ship-num=6,health-spectate=59..60}] at @s run effect give @s strength 4 3 false
execute as @a[scores={ship-num=15,health-spectate=59..60}] at @s run effect give @s strength 4 3 false

