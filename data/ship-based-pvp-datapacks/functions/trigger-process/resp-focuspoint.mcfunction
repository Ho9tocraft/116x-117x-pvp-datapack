#リスポーン時のFP-reset
execute as @a[scores={ship-num=3,ship-num=8}] at @s run scoreboard players set @s FocusPoint 100
execute as @a[scores={ship-num=1..2}] at @s run scoreboard players set @s FocusPoint 150
execute as @a[scores={ship-num=4}] at @s run scoreboard players set @s FocusPoint 200
execute as @a[scores={ship-num=6..7}] at @s run scoreboard players set @s FocusPoint 250
execute as @a[scores={ship-num=5}] at @s run scoreboard players set @s FocusPoint 300
