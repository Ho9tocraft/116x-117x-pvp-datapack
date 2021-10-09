#究極履行詠唱
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted,tag=!Ready_Ultimate] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ":","color": "white"},{"text": "終わりだ、弱き命ども！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted,tag=!Ready_Ultimate] at @s run tellraw @a {"text": "死した神稚児は「究極履行『冠位指定／人理保障天球』」の構え。","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted,tag=!Ready_Ultimate] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/common/ultimate_phase_shift 10s append
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted,tag=!Ready_Ultimate] at @s run schedule function ship-based-pvp-datapacks:enemy_data/skills/after/enrage 600s append
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted,tag=!Ready_Ultimate] at @s run tag @s add Ready_Ultimate
