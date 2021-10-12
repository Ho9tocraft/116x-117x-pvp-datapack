#爆弾設置（#2）
execute as @a[scores={ship-num=15,skill1-ct=0,FocusPoint=10..},team=Red,predicate=ship-based-pvp-datapacks:bomb-set] at @s run summon creeper ~ ~ ~ {Silent:1b,powered:1b,ExplosionRadius:8b,ignited:0b,Team:"Red"}
execute as @a[scores={ship-num=15,skill1-ct=0,FocusPoint=10..},team=Blue,predicate=ship-based-pvp-datapacks:bomb-set] at @s run summon creeper ~ ~ ~ {Silent:1b,powered:1b,ExplosionRadius:8b,ignited:0b,Team:"Blue"}
execute as @a[scores={ship-num=15,skill1-ct=0,FocusPoint=10..},predicate=ship-based-pvp-datapacks:bomb-set] at @s run scoreboard players remove @s FocusPoint 10
execute as @a[scores={ship-num=15,skill1-ct=0},predicate=ship-based-pvp-datapacks:bomb-set] at @s run scoreboard players set @s skill1-ct 10
execute as @a[scores={ship-num=15,skill1-ct=..5,FocusPoint=..9}] at @s run scoreboard players set @s skill1-ct 5
