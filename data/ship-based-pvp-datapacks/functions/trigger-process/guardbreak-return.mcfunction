#ガードブレイク復帰コマンドです

execute if score #Helper CombatMode matches 2 as @s at @s run scoreboard players set @s shield-guard-sum 0
execute if score #Helper CombatMode matches 2 as @s[tag=guardbreak] at @s run tag @s remove guardbreak


