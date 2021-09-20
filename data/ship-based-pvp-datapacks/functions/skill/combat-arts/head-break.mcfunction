#頸狩り
#発動時敵の背後に回り込んで斬撃
#職業関係なく使用可能とする。
execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=..20},predicate=ship-based-pvp-datapacks:scythe,team=Red] at @s at @e[team=Blue,distance=..15,sort=nearest,limit=1] run tp ^ ^ ^
execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=..20},predicate=ship-based-pvp-datapacks:scythe,team=Blue] at @s at @e[team=Red,distance=..15,sort=nearest,limit=1] run tp ^ ^ ^
execute as @a[scores={ship-num=1..,skill3-ct=0,FocusPoint=..20},predicate=ship-based-pvp-datapacks:scythe] at @s run scoreboard players remove @s FocusPoint 20
execute as @a[scores={ship-num=1..,skill3-ct=0},predicate=ship-based-pvp-datapacks:scythe] at @s run scoreboard players set @s skill3-ct 10
