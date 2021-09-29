#致死の白霧
execute as @a[scores={ship-num=5,skill3-ct=0,FocusPoint=25..},predicate=ship-based-pvp-datapacks:pestilent-mist,team=Red] at @s as @e[team=Blue,sort=nearest,distance=..15] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.961 0.961 0.961 1 60",ReapplicationDelay:2,Radius:5f,RadiusPerTick:0f,Duration:400,WaitTime:10,Tags:["mist","mist-red"],Effects:[{Id:20b,Amplifier:3b,Duration:100,ShowParticles:1b},{Id:2b,Amplifier:9b,Duration:100,ShowParticles:1b}]}
execute as @a[scores={ship-num=5,skill3-ct=0,FocusPoint=25..},predicate=ship-based-pvp-datapacks:pestilent-mist,team=Blue] at @s as @e[team=Red,sort=nearest,distance=..15] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust 0.961 0.961 0.961 1 60",ReapplicationDelay:2,Radius:5f,RadiusPerTick:0f,Duration:400,WaitTime:10,Tags:["mist","mist-blue"],Effects:[{Id:20b,Amplifier:3b,Duration:100,ShowParticles:1b},{Id:2b,Amplifier:9b,Duration:100,ShowParticles:1b}]}
execute as @a[scores={ship-num=5,skill3-ct=0,FocusPoint=25..},predicate=ship-based-pvp-datapacks:pestilent-mist,team=Red] at @s run data modify entity @e[type=area_effect_cloud,tag=mist-red,limit=1,sort=nearest] Owner set from entity @s UUID
execute as @a[scores={ship-num=5,skill3-ct=0,FocusPoint=25..},predicate=ship-based-pvp-datapacks:pestilent-mist,team=Blue] at @s run data modify entity @e[type=area_effect_cloud,tag=mist-blue,limit=1,sort=nearest] Owner set from entity @s UUID
execute as @a[scores={ship-num=5,skill3-ct=0,FocusPoint=25..},predicate=ship-based-pvp-datapacks:pestilent-mist,advancements={ship-based-pvp-datapacks:first-win/sorcerer-first-win=true}] at @s run advancement grant @s only ship-based-pvp-datapacks:ship-contents/sorcerer-spellcast
execute as @a[scores={ship-num=5,skill3-ct=0,FocusPoint=25..},predicate=ship-based-pvp-datapacks:pestilent-mist] at @s run scoreboard players remove @s FocusPoint 25
execute as @a[scores={ship-num=5,skill3-ct=0},predicate=ship-based-pvp-datapacks:pestilent-mist] at @s run scoreboard players set @s skill3-ct 30
execute as @a[scores={ship-num=5,skill3-ct=..5,FocusPoint=..24}] at @s run scoreboard players set @s skill3-ct 5


