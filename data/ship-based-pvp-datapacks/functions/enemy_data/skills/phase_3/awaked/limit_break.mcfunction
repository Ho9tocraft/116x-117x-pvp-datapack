#侮るな、限界などいくらでも越えてやる！
#リミットブレイク（LB1、LB2、LB3、LB4）
# リミットチャージ
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=..3}] at @s run scoreboard players add @s TraceOn 1
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=4}] at @s run scoreboard players set @s TraceOn 0
# LB1: 覇気（範囲内の敵に即時ダメージⅢ付与、共通スタン付与、冠位メテオ）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=0}] at @s run tellraw @a {"text": "死した神稚児の「覇気」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=0}] at @s run tellraw @a {"text": "死した神稚児は「冠位指定／人理保障天球」の構え。","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=0}] at @s as @e[type=!#ship-based-pvp-datapacks:undead,team=Blue,distance=..20] at @s run effect give @s instant_damage 1 2 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=0}] at @s as @e[type=#ship-based-pvp-datapacks:undead,team=Blue,distance=..20] at @s run effect give @s instant_health 1 2 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=0}] at @s as @e[team=Blue,distance=..20] at @s run function ship-based-pvp-datapacks:trigger-process/stun_effect
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=0}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/phase_3/animsphere-pose 3s append
# LB2: 火継ぎの終わりを看取るもの・零式（概ね「火継ぎの終わりを看取るもの」に同じ。メテオ回数が5回に増えている、早回し等の鬼畜ギミックが揃っている）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run tellraw @a {"text": "死した神稚児は「火継ぎの終わりを看取るもの・零式」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run tellraw @a {"text": "死した神稚児の「冠位指定／人理保障天球・連弾」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run tellraw @a {"text": "死した神稚児の「嵐の落雷」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run effect give @s resistance 6 4 true
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s as @a[tag=!EndOfWorld,team=Blue] at @s run tag @s add EndOfWorld
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/teotw-aoe 1s
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-grand_start 1.5s append
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-grand_start 2.5s append
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-grand_start 3.5s append
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-grand_start 4.5s append
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/meteor-grand_start 5.5s append
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s as @e[sort=random,limit=4,team=Blue,tag=!Thunder_Over] at @s run tag @s add Thunder_Over
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=1}] at @s as @e[tag=Thunder_Over,team=Blue] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/thunder-storm-roopticks 0.5s
# LB3: 冠位指定／人理保障天球・絶（履行技とは違い単発だが、威力が桁違い）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=2}] at @s run tellraw @a {"text": "死した神稚児の「冠位指定／人理保障天球・絶」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=2}] at @s as @r[team=Blue,distance=..40] at @s run summon fireball ~ ~30 ~ {Fire:30000,HasVisualFire:1b,ExplosionPower:20b,power:[0.0,-0.1,0.0]}
# LB4: ゼタフレア（自機中心半径80mの焼夷攻撃。タンク（HP100のMT）が受ければ生き残れるが、無敵・惜別受けが有効。また、アンデッドには効果がない）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=3}] at @s run tellraw @a {"text": "死した神稚児の「ゼタフレア」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0,TraceOn=3}] at @s as @e[type=!#ship-based-pvp-datapacks:undead,team=Blue,distance=..80] at @s run effect give @s instant_damage 1 5 false
# CT処理
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill3-ct=0}] at @s run scoreboard players set @s skill3-ct 180
