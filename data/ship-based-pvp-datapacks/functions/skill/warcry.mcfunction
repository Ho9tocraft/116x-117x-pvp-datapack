#ウォークライ
#持たざる者ver.は低攻撃バフ・長時間、戦士ver.は高攻撃バフ・短時間
#CTはいずれも200 seconds

#1. 自バフ
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry] at @s run effect give @s strength 15 1 false
execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry] at @s run effect give @s strength 30 0 false

#2. 敵デバフ
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Red] at @s positioned ^ ^ ^3 run effect give @e[team=Blue,distance=..3] blindness 3 3 false
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Red] at @s positioned ^ ^ ^3 run effect give @e[team=Blue,distance=..3] weakness 30 0 false
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Red] at @s positioned ^ ^ ^3 run effect give @e[team=Blue,distance=..3] slowness 30 3 false
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Blue] at @s positioned ^ ^ ^3 run effect give @e[team=Red,distance=..3] blindness 3 3 false
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Blue] at @s positioned ^ ^ ^3 run effect give @e[team=Red,distance=..3] weakness 30 0 false
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Blue] at @s positioned ^ ^ ^3 run effect give @e[team=Red,distance=..3] slowness 30 3 false

execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Red] at @s positioned ^ ^ ^3 run effect give @e[team=Blue,distance=..3] blindness 3 3 false
execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Red] at @s positioned ^ ^ ^3 run effect give @e[team=Blue,distance=..3] weakness 30 0 false
execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Red] at @s positioned ^ ^ ^3 run effect give @e[team=Blue,distance=..3] slowness 30 3 false
execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Blue] at @s positioned ^ ^ ^3 run effect give @e[team=Red,distance=..3] blindness 3 3 false
execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Blue] at @s positioned ^ ^ ^3 run effect give @e[team=Red,distance=..3] weakness 30 0 false
execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,team=Blue] at @s positioned ^ ^ ^3 run effect give @e[team=Red,distance=..3] slowness 30 3 false

#実績処理
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,advancements={ship-based-pvp-datapacks:first-win/warrior-first-win=true}] at @s run advancement grant @s only ship-based-pvp-datapacks:ship-contents/warrior-warcry
execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry,advancements={ship-based-pvp-datapacks:first-win/deprived-first-win=true}] at @s run advancement grant @s only ship-based-pvp-datapacks:ship-contents/deprived-warcry
#3. CT/FP消費処理
execute as @a[scores={ship-num=3,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry] at @s run scoreboard players remove @s FocusPoint 20
execute as @a[scores={ship-num=8,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:warcry] at @s run scoreboard players remove @s FocusPoint 20
execute as @a[scores={ship-num=3,skill3-ct=0},predicate=ship-based-pvp-datapacks:warcry] at @s run scoreboard players set @s skill3-ct 60
execute as @a[scores={ship-num=8,skill3-ct=0},predicate=ship-based-pvp-datapacks:warcry] at @s run scoreboard players set @s skill3-ct 60
execute as @a[scores={ship-num=3,skill3-ct=..5,FocusPoint=..19}] at @s run scoreboard players set @s skill3-ct 5
execute as @a[scores={ship-num=8,skill3-ct=..5,FocusPoint=..19}] at @s run scoreboard players set @s skill3-ct 5
