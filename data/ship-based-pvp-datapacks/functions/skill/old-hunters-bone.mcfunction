#regulation 1.3.1: 効果時間を20→30に変更。バフ。
#効果
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=90..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run effect give @s speed 30 3 false
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=90..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run effect give @s jump_boost 30 3 false
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=90..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run effect give @s regeneration 30 3 false
#Effects
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=90..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run particle dust 0.635 0.125 0.255 1 ~ ~ ~ 0 0 0 1 20 normal @a
#Consuming FP: 90
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=90..},predicate=ship-based-pvp-datapacks:old-hunters-bone,advancements={ship-based-pvp-datapacks:first-win/harrowed-hunter-first-win=true}] at @s run advancement grant @s only ship-based-pvp-datapacks:ship-contents/harrowed-bone
execute as @a[scores={ship-num=7,skill2-ct=0,FocusPoint=90..},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run scoreboard players remove @s FocusPoint 90
#CT: 60 seconds
execute as @a[scores={ship-num=7,skill2-ct=0},predicate=ship-based-pvp-datapacks:old-hunters-bone] at @s run scoreboard players set @s skill2-ct 60
execute as @a[scores={ship-num=7,skill2-ct=..5,FocusPoint=..89}] at @s run scoreboard players set @s skill2-ct 5
