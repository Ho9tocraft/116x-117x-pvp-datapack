#ガードブレイク
#やたらめったら強い騎士に、盾を持っていない職が挑む為の救済措置
#…といっても盾持ってたら誰だってこうなるんだけどね
execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard=1..}] at @s run scoreboard players operation @s shield-guard-sum += @s shield-guard
execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard=1..},tag=guardbreak] at @s run effect give @s instant_damage 10 3 false

execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard-sum=50..},tag=!guardbreak] at @s run effect give @s slowness 10 9 false
execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard-sum=50..},tag=!guardbreak] at @s run effect give @s mining_fatigue 10 9 false
execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard-sum=50..},tag=!guardbreak] at @s run effect give @s weakness 15 9 false
execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard-sum=50..},tag=!guardbreak] at @s run schedule function ship-based-pvp-datapacks:trigger-process/guardbreak-return 310t
execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard-sum=50..},tag=!guardbreak] at @s run playsound item.shield.break master @a[distance=..3]
execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard-sum=50..},tag=!guardbreak] at @s run tag @s add guardbreak

execute if score #Helper CombatMode matches 2 as @a[scores={shield-guard=1..}] at @s run scoreboard players set @s shield-guard 0

