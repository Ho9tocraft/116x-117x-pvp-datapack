#リスポーン時のFP-reset
execute as @s[scores={ship-num=3,ship-num=8}] at @s run scoreboard players set @s FocusPoint 100
execute as @s[scores={ship-num=1..2}] at @s run scoreboard players set @s FocusPoint 150
execute as @s[scores={ship-num=4}] at @s run scoreboard players set @s FocusPoint 200
execute as @s[scores={ship-num=6..7}] at @s run scoreboard players set @s FocusPoint 250
execute as @s[scores={ship-num=5}] at @s run scoreboard players set @s FocusPoint 300
