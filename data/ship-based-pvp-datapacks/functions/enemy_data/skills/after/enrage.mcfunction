#エンレイジ（時間切れ演出）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "終わりだ、光の化け物よ…！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready] at @s run tellraw @a {"text": "死した神稚児は「火継ぎの終わりを看取るもの」の構え。","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/enrage_afterburner 30s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Enrage_Ready] at @s run tag @s add Enrage_Ready
