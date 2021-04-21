#naturally regenerationの代わりの関数です

execute as @a[gamemode=adventure,predicate=ship-based-pvp-datapacks:has_regeneration] at @s run effect give @s regeneration 4 0 true
execute as @a[gamemode=adventure,nbt=!{ActiveEffects:[{Id:21b}]}] at @s run effect give @s health_boost 1000000 4 true

