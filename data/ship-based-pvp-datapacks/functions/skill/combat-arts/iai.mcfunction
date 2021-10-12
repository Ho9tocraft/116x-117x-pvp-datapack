#居合(#8)
#ダメージ量は構えより多く、しかし効果時間は短く
execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=10..},predicate=ship-based-pvp-datapacks:katanas,team=Red] at @s as @e[team=Blue,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 3 false
execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=10..},predicate=ship-based-pvp-datapacks:katanas,team=Red] at @s as @e[team=Blue,distance=..15,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 3 false

execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=10..},predicate=ship-based-pvp-datapacks:katanas,team=Blue] at @s as @e[team=Red,distance=..15,type=!#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_damage 1 3 false
execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=10..},predicate=ship-based-pvp-datapacks:katanas,team=Blue] at @s as @e[team=Red,distance=..15,type=#ship-based-pvp-datapacks:undead] at @s run effect give @s instant_health 1 3 false

execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=10..},predicate=ship-based-pvp-datapacks:katanas] at @s run playsound block.anvil.hit master @a[distance=..15] ~ ~ ~ 90.0 1.0 0.5
execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=10..},predicate=ship-based-pvp-datapacks:katanas] at @s run playsound entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 100 1.0 0.5
execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=10..},predicate=ship-based-pvp-datapacks:katanas] at @s run scoreboard players remove @s FocusPoint 10
execute as @a[scores={ship-num=1..,skill3-ct=0},predicate=ship-based-pvp-datapacks:katanas] at @s run scoreboard players set @s skill3-ct 15

