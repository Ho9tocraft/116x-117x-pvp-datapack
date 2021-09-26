#頭割り（4人以上）
execute store result score #Helper splitting-member run execute as @p[team=Blue,tag=BLU_SPLITTING] at @s if entity @a[team=Blue,distance=..6]
execute as @p[team=Blue,tag=BLU_SPLITTING] at @s as @e[team=Blue,distance=..9] at @s if score #Helper splitting-member matches 4.. run effect give @s[type=!#ship-based-pvp-datapacks:undead] instant_damage 1 2 false
#容赦なく死ぬがいい！！
execute as @p[team=Blue,tag=BLU_SPLITTING] at @s as @e[team=Blue,distance=..9] at @s unless score #Helper splitting-member matches 4.. run effect give @s[type=!#ship-based-pvp-datapacks:undead] instant_damage 1 15 false
execute as @p[team=Blue,tag=BLU_SPLITTING] at @s run particle explosion ~ ~ ~ 9 9 9 1 128 normal
