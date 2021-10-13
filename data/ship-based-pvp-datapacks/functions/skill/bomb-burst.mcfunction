execute as @a[scores={ship-num=15,skill3-ct=0},predicate=ship-based-pvp-datapacks:bomb-burst] at @s run tag @s add TERAFLARE
execute as @a[scores={ship-num=15,skill3-ct=0},predicate=ship-based-pvp-datapacks:bomb-burst] at @s run tellraw @a [{"selector":"@s","color": "green"},{"text": "はテラフレアの構え。"}]
execute as @a[scores={ship-num=15,skill3-ct=0},predicate=ship-based-pvp-datapacks:bomb-burst] at @s run schedule function ship-based-pvp-datapacks:trigger-process/bomberman-burst-lastprocess 10s append
execute as @a[scores={ship-num=15,skill3-ct=0},predicate=ship-based-pvp-datapacks:bomb-burst] at @s run scoreboard players set @s skill3-ct 80
