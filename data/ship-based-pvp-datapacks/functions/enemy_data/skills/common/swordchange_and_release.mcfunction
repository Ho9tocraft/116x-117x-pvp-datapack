#幻影刃切り替え・発動
#切り替え（適度にランダム化予定）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0},tag=Hold,tag=!Ready] at @s run tag @s add Ready
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0},tag=!Hold] at @s run scoreboard players add @s kichigaiking 1
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=8..},tag=!Hold] at @s run scoreboard players set @s kichigaiking 0
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0},tag=!Hold] at @s run tellraw @a[team=Blue] {"text": "死した神稚児は「幻影刃」の構え。","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0},tag=!Hold] at @s run tag @s add Hold
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0},tag=Hold,tag=!Ready] at @s run scoreboard players set @s skill1-ct 10

#region 発動
## 乱れ散華（全体範囲）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=0},tag=Hold] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "邪魔だ、散れ！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=0},tag=Hold] at @s as @e[team=Blue] at @s run effect give @s[type=!#ship-based-pvp-datapacks:undead] instant_damage 1 3
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=0},tag=Hold] at @s as @e[team=Blue] at @s run effect give @s[type=#ship-based-pvp-datapacks:undead] instant_health 1 3
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=0},tag=Hold] at @s as @e[team=Blue] at @s run function ship-based-pvp-datapacks:trigger-process/stun_effect
## 雷返し（ランダムターゲット強攻撃その1）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=1},tag=Hold] at @s as @e[team=Blue,sort=random,limit=1] at @s run tellraw @s [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "神の雷を受けるといい！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=1},tag=Hold] at @s as @e[team=Blue,sort=random,limit=1] at @s run effect give @s[type=!#ship-based-pvp-datapacks:undead] instant_damage 1 4
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=1},tag=Hold] at @s as @e[team=Blue,sort=random,limit=1] at @s run effect give @s[type=#ship-based-pvp-datapacks:undead] instant_health 1 4
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=1},tag=Hold] at @s as @e[team=Blue,sort=random,limit=1] at @s run function ship-based-pvp-datapacks:trigger-process/lightning_bolt_storm
## 嵐断ち（散開処理）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=2},tag=Hold] at @s as @a[team=Blue] at @s run tag @s add BLU_DISPERSAL
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=2},tag=Hold] at @s run tellraw @a  [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "立ち塞がるモノ全てを断つ！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=2},tag=Hold] at @s as @a[team=Blue] at @s run tellraw @s {"text": "散開して攻撃に備えよ！","color": "gold","bold": true}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=2},tag=Hold] at @s as @a[team=Blue] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/dispersal-aoe 5s
## 爆裂（頭割り）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=3},tag=Hold] at @s as @r[team=Blue] at @s run tag @s add BLU_SPLITTING
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=3},tag=Hold] at @s run tellraw @a  [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "断ち切る！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=3},tag=Hold] at @s as @a[team=Blue] at @s run tellraw @s {"text": "集合して攻撃に備えよ！","color": "gold","bold": true}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=3},tag=Hold] at @s as @a[team=Blue] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/splitting-aoe 5s
## 頸狩り（ランダムターゲットテレポート）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=4},tag=Hold] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "その首、貰い受ける！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=4},tag=Hold] at @s run tp @s @e[team=Blue,sort=random,limit=1]
## 竜閃（直線方向）
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=5},tag=Hold] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "其は、竜をも断つ嵐の一撃…！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0,kichigaiking=5},tag=Hold] at @s run function ship-based-pvp-datapacks:enemy_data/skills/after/straight_aoe
## タグ処理
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0},tag=Ready] at @s run tag @s remove Ready
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0},tag=Hold] at @s run tag @s remove Hold
## 発動CT処理
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,scores={skill1-ct=0},tag=!Hold] at @s run scoreboard players set @s skill1-ct 30
#endregion
