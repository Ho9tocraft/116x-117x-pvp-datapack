#究極履行
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "今こそ裁定の時…！窮極の門よ、開け…！！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s run tellraw @a [{"text": "死した神稚児","color": "dark_red"},{"text": ": ","color": "white"},{"text": "星の形、宙の形、神の形、我の形。\n天体は空洞なり、空洞は虚空なり、虚空には神ありき…！","color": "red"}]
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s run tellraw @a {"text": "死した神稚児の「究極履行『冠位指定／人理保障天球』」","color": "green"}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run effect give @s resistance 10 2 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run effect give @s strength 600 4 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run effect give @s instant_damage 1 3 false
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s run effect give @s speed 1000000 4 true
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s run effect give @s resistance 10 4 true
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^ ^30 ^ {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^3 ^30 ^ {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^3 ^30 ^3 {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^-3 ^30 ^3 {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^ ^30 ^3 {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^ ^30 ^-3 {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^-3 ^30 ^-3 {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^3 ^30 ^-3 {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s as @e[team=Blue] at @s run summon fireball ^-3 ^30 ^ {HasVisualFire:1b,ExplosionPower:12b,power:[0.0,-0.4,0.0]}
execute as @e[type=skeleton,tag=Yuzuki_HandHeld,tag=!Phase_Shifted] at @s run tag @s add Phase_Shifted
